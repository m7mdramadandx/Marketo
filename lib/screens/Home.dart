import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/Product.dart';
import '../widgets/colors.dart';
import 'Categories.dart';
import 'DetailsScreen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0, cartItem = 0;
  bool isFavorite = true;

  @override
  initState() {
    super.initState();
    _loadCounter();
  }

  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      cartItem = (prefs.getInt('cartItem') ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    _loadCounter();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: silver,
        elevation: 0,
        title: Text(
          'Marketo',
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Container(
            width: 45,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Icon(CupertinoIcons.shopping_cart, color: Color(0xff303841)),
                cartItem != 0
                    ? Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                          alignment: Alignment.center,
                          child: Text('$cartItem'),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
          SizedBox(width: 8)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GridView.builder(
                  itemCount: productList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) => item(
                        product: productList[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                    product: productList[index]))),
                      )),
            ),
          ),
        ],
      ),
    );
  }

  Widget item({Product product, Function() press}) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Hero(
                tag: product.id,
                child: CachedNetworkImage(
                  imageUrl: product.imgUrl,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.scaleDown),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 18.0)
                        ]),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 6),
          Text("${product.title}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
        ],
      ),
    );
  }
}
