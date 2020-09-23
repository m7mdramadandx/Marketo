import 'package:flutter/material.dart';
import 'package:marketo/screens/aq.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffeeeeee),
          primaryColor: Color(0xff303841),
          accentColor: Color(0xff3a4750),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          // primaryIconTheme: IconThemeData(color: Colors.white),
          // accentIconTheme: IconThemeData(color: Colors.white),
          iconTheme: IconThemeData(color: Color(0xff3a4750)),
          textTheme: TextTheme(
            body1: TextStyle(color: Color(0xff3a4750)),
            body2: TextStyle(color: Color(0xff3a4750)),
            button: TextStyle(color: Color(0xff3a4750)),
          ),
          fontFamily: 'Comfortaa'),
      home: LandingPage(),
    );
  }
}
