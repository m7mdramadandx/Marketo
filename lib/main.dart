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
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.grey, width: 4),
                          shape: BoxShape.circle),
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.all(4)),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle),
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.all(4),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow, shape: BoxShape.circle),
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.all(4),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.all(4),
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
    return Container(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Image.asset("lib/assets/images/cr7.jpg"),
          ),
          Positioned(
            child: FloatingActionButton(
                elevation: 8,
                child: Icon(Icons.favorite, color: Colors.grey),
                backgroundColor: Colors.white,
                onPressed: () {}),
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
