import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key key, @required Function onPressed})
      : onPressed = onPressed,
        super(key: key);
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.maxFinite,
      height: 45,
      child: RaisedButton(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "PROCEED WITH ",
              style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(
              width: 12.0,
            ),
            Image(
              image: AssetImage('assets/icons/googleicon.png'),
              height: 28.0,
            ),
          ],
        ),
        textColor: Colors.white,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
