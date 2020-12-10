import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_XI/core/colors.dart';
import 'package:play_XI/widgets/wrapper.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 4400),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Wrapper())));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        // color: AppColors.white,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.orange, AppColors.magentaRed],
                stops: [0.0, 1.0],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Text(
            "Play XI",
            style: GoogleFonts.montserrat(color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
