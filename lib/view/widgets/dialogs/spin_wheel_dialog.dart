import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home_screen.dart';

Future<void> showSpinWheelDialog(
    BuildContext context, double height, double width) async {
  await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Dialog(
            child: Container(
              height: height * 0.31,
              width: width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Column(children: [
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                          alignment: Alignment.center,
                          height: height * 0.025,
                          color: const Color(0xffCC0632),
                          fit: BoxFit.cover,
                          image: const AssetImage(
                              'assets/images/trophy_icon.png')),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Text(
                        'Such great fortune!',
                        style: GoogleFonts.montserrat(
                            color: const Color(0xff424242),
                            fontSize: height * 0.028,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.035),
                  Center(
                      child: Text(
                    "Today you've won",
                    style:
                        GoogleFonts.montserrat(color: const Color(0xff757575)),
                  )),
                  SizedBox(height: height * 0.01),
                  Container(
                    height: height * 0.06,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xffFFE7ED)),
                    alignment: Alignment.center,
                    child: Text(
                      '100 ponits',
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.025,
                          color: const Color(0xffCC0632),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: height * 0.025),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(204, 6, 50, 1.0)),
                      alignment: Alignment.center,
                      child: Text(
                        'GO TO HOMEPAGE',
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.025,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ),
        );
      });
}
