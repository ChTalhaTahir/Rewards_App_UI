import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget appBar(double height, double width) {
  return AppBar(
    backgroundColor: const Color(0xffE5E5E5),
    elevation: 0,
    actions: [
      Stack(children: <Widget>[
        Center(
          child: Container(
            height: height * 0.06,
            width: width * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffFFA900),
            ),
            alignment: Alignment.center,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.4),
                  child: Text(
                    '1.000',
                    style: GoogleFonts.montserrat(fontSize: height * 0.02),
                  ),
                ),
                SizedBox(
                  width: width * 0.005,
                ),
                Image(
                    color: Colors.white,
                    height: height * 0.025,
                    image: const AssetImage(
                      'assets/images/trophy_icon.png',
                    ))
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            height: height * 0.06,
            width: width * 0.38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffF5F5F5),
            ),
            alignment: Alignment.center,
            child: Text(
              'My rewards',
              style: GoogleFonts.montserrat(
                  color: const Color(0xff424242), fontSize: height * 0.02),
            ),
          ),
        ),
      ])
    ],
    leading: const Icon(
      Icons.notifications_outlined,
      color: Colors.black,
    ),
  );
}
