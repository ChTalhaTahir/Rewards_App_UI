import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> showRedeemDialog(BuildContext context,
    {required double height, required double width}) async {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            height: height * 0.5,
            width: width * 0.9,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Do you want to get a redemtion code for a 25 Starbucks giftcard?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          color: const Color(0xff424242),
                          fontSize: height * 0.03,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: height * 0.15,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffF5E6FB)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '10,000',
                                  style: GoogleFonts.montserrat(
                                      color: const Color(0xff52006A),
                                      fontWeight: FontWeight.w600,
                                      fontSize: height * 0.035),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  'Points',
                                  style: GoogleFonts.montserrat(
                                      color: const Color(0xff52006A),
                                      fontWeight: FontWeight.w500,
                                      fontSize: height * 0.025),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  'MY REWARDS',
                                  style: GoogleFonts.montserrat(
                                      color: const Color(0xff52006A),
                                      wordSpacing: 1,
                                      fontWeight: FontWeight.w400,
                                      fontSize: height * 0.015),
                                ),
                              ]),
                        ),
                        Text(
                          '>',
                          style: TextStyle(fontSize: height * 0.05),
                        ),
                        Container(
                          height: height * 0.15,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffFFE7ED)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '25',
                                  style: GoogleFonts.montserrat(
                                      color: const Color(0xffCC0632),
                                      fontWeight: FontWeight.w600,
                                      fontSize: height * 0.035),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  'Starbucks',
                                  style: GoogleFonts.montserrat(
                                      color: const Color(0xffCC0632),
                                      fontWeight: FontWeight.w500,
                                      fontSize: height * 0.025),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  'GIFT CARD',
                                  style: GoogleFonts.montserrat(
                                      color: const Color(0xffCC0632),
                                      wordSpacing: 1,
                                      fontWeight: FontWeight.w400,
                                      fontSize: height * 0.015),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    Container(
                      height: height * 0.07,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(204, 6, 50, 1.0)),
                      alignment: Alignment.center,
                      child: Text(
                        'CONFIRM',
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.025,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(204, 6, 50, 1.0)),
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        alignment: Alignment.center,
                        child: Text(
                          'CANCEL',
                          style: GoogleFonts.montserrat(
                            fontSize: height * 0.025,
                            color: const Color.fromRGBO(204, 6, 50, 1.0),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        );
      });
}
