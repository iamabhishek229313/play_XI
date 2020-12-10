import 'dart:math';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_XI/core/colors.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.screenBg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: AppColors.magentaRed,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "PLAY XI",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
          ),
          leading: Container(color: Colors.green),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {},
              // color: AppColors.screenBg,
              // color: Colors.white,
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// [Sport Selection Panel]
          SizedBox(
            height: screenHeight * 0.066,
            child: Material(
              elevation: 5.0,
              shadowColor: AppColors.screenBg,
              color: Colors.grey.shade50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.sports_cricket),
                  Icon(Icons.sports_cricket),
                  Icon(Icons.sports_cricket),
                  Icon(Icons.sports_cricket),
                  Icon(Icons.sports_cricket),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),

          /// [This is going to be a carousel]
          Container(
            height: screenHeight * 0.1,
            child: Placeholder(),
          ),
          SizedBox(
            height: 26.0,
          ),

          /// [Rest is going to be Upcoming Matches Description]
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Upcoming Matches", style: GoogleFonts.montserrat(fontWeight: FontWeight.w800, fontSize: 16.0)),
                SizedBox(
                  height: 8.0,
                ),
                Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.1),
                      itemCount: 15,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        /// [There is meant to be Upcoming matches Cards.]
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.primaries[Random().nextInt(13)],
                                borderRadius: BorderRadius.circular(6.0)),
                            margin: const EdgeInsets.only(top: 8.0),
                            height: screenHeight * 0.16,
                          ),
                        );
                      }),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
