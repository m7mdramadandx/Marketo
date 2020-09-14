import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Comfortaa'),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  bool isFavorite = true;

  String cr7_default = "lib/assets/images/cr7_black.jpg";
  String cr7_black = "lib/assets/images/cr7_black.jpg";
  String cr7_white = "lib/assets/images/cr7_white.jpg";
  String cr7_red = "lib/assets/images/cr7_red.jpg";
  String cr7_blue = "lib/assets/images/cr7_blue.jpg";

  Widget property() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 0;
                        cr7_default = cr7_black;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                                color: Colors.grey, width: index == 0 ? 5 : 0),
                            shape: BoxShape.circle),
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.all(4)),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                        cr7_default = cr7_white;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.grey, width: index == 1 ? 5 : 0),
                            shape: BoxShape.circle),
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.all(4)),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 2;
                        cr7_default = cr7_red;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(
                                color: Colors.grey, width: index == 2 ? 5 : 0),
                            shape: BoxShape.circle),
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.all(4)),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 3;
                        cr7_default = cr7_blue;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                color: Colors.grey, width: index == 3 ? 5 : 0),
                            shape: BoxShape.circle),
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.all(4)),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text("Size"),
              Text(
                "9",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2F2F3E)),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget cardItem() {
    Color favoriteColor = Colors.grey;

    return Container(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Image.asset(cr7_default),
          ),
          Positioned(
            child: FloatingActionButton(
              elevation: 8,
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Icon(Icons.favorite,
                  color: isFavorite ? Colors.red : Colors.grey),
              backgroundColor: Colors.white,
            ),
            bottom: 0,
            right: 8,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
            'Mercurial Superfly CR7',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
          elevation: 32,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            )
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {},
          ),
          centerTitle: true),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            cardItem(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "The Superfly is back again, stronger than ever. The Nike Mercurial Superfly is tailored for speed and takes the Mercurial silo into a brand new era.",
                textAlign: TextAlign.justify,
                style: TextStyle(color: Color(0xFF6F8398)),
              ),
            ),
            property(),
          ],
        ),
      ),
    );
  }
}
