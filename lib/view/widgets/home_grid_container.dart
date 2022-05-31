import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeGridContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color? boxColor;
  final String? text;
  final Color? textColor;
  const HomeGridContainer({
    Key? key,
    required this.height,
    required this.width,
    this.boxColor,
    this.text,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height * 0.09,
        width: width * 0.47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: boxColor,
        ),
        alignment: Alignment.center,
        child: Text(
          '$text',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontSize: height * 0.03,
              color: textColor),
        ),
      ),
    );
  }
}
