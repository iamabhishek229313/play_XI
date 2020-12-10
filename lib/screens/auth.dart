import 'package:flutter/material.dart';
import 'package:play_XI/services/google_auth.dart';
import 'package:play_XI/utils/googleButton.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final Authentication _authenticationDelegate = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "<LOGO/>",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  GoogleButton(
                    onPressed: _authenticationDelegate.handleSignIn,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
