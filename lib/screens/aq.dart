import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Login.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isCurrentUser;

  @override
  void initState() {
    super.initState();
    readLocal();
  }

  readLocal() async {
    _auth.currentUser != null ? isCurrentUser = true : isCurrentUser = false;
  }

  @override
  Widget build(BuildContext context) {
    return isCurrentUser ? MyHomePage() : LoginScreen();
  }
}
