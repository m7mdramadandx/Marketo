import 'package:flutter/material.dart';
import 'package:marketo/screens/AuthServices.dart';

import 'Home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthServices authServices;

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration:
                  InputDecoration(hintText: "Email", icon: Icon(Icons.email)),
            ),
            SizedBox(height: 8),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "Password", icon: Icon(Icons.vpn_key)),
            ),
            SizedBox(height: 8),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                  hintText: "Conform Password", icon: Icon(Icons.vpn_key)),
            ),
            SizedBox(height: 20),
            FlatButton(
              onPressed: () {
                authServices.createAuthUser(
                    emailController.text, passwordController.text);
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 40),
            TextField(
              decoration:
                  InputDecoration(hintText: "Email", icon: Icon(Icons.email)),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                  hintText: "Password", icon: Icon(Icons.vpn_key)),
            ),
            SizedBox(height: 20),
            FlatButton(
                onPressed: () {
                  authServices.login(
                          emailController.text, passwordController.text)
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ))
                      : print('Error');
                },
                child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
