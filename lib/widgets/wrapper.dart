import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:play_XI/core/colors.dart';
import 'package:play_XI/core/constants.dart';
import 'package:play_XI/screens/auth.dart';
import 'package:play_XI/screens/home.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        log("Snapshot data is: " + snapshot.data.toString());
        if (snapshot.hasData) return Home();
        return Auth();
      },
    );
  }
}
