import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widgets/login_signup_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskIndoContainer extends StatelessWidget {
  final double height;
  final double width;

  final int? firstPoints;
  final int? secondPoints;
  final String? firstContent;
  final String? secondContent;
  final String? description;
  const TaskIndoContainer(
      {Key? key,
      required this.height,
      required this.width,
      this.firstPoints,
      this.secondPoints,
      this.firstContent,
      this.secondContent,
      this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.7,
      width: width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          color: Colors.white),
      child: Center(
        child: SizedBox(
            width: width * 0.9,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Text('Tasks',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.04)),
                  Text('Accomplish these tasks to get your reward!',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.018,
                          color: const Color(0xff757575))),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: height * 0.1,
                            width: width * 0.22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFA900)),
                            alignment: Alignment.center,
                            child: Text('+$firstPoints Points',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: height * 0.025)),
                          ),
                          const Image(
                            image:
                                AssetImage('assets/images/line_catageory.png'),
                          ),
                          Container(
                            height: height * 0.1,
                            width: width * 0.22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFA900)),
                            alignment: Alignment.center,
                            child: Text('+$secondPoints Points',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: height * 0.025)),
                          )
                        ],
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: height * 0.125,
                            width: width * 0.35,
                            alignment: Alignment.center,
                            child: Text('$firstContent',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: height * 0.025)),
                          ),
                          Container(
                            height: height * 0.125,
                            width: width * 0.3,
                            alignment: Alignment.center,
                            child: Text('$secondContent',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: height * 0.025)),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                      height: height * 0.2,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffF5F5F5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            'Description',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: height * 0.025),
                          ),
                          Text(
                            '$description',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff757575),
                                fontSize: height * 0.017),
                          )
                        ],
                      )),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  LoginSignUpButton(
                    height: height,
                    width: width,
                    buttonColor: const Color(0xffCC0632),
                    text: 'INSTALL APP',
                    textColor: Colors.white,
                  ),
                ])),
      ),
    );
  }
}
