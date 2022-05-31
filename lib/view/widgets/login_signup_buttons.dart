import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSignUpButton extends StatelessWidget {
  final double height;
  final double width;
  final Color? buttonColor;
  final String? text;
  final Color? textColor;
  final GestureTapCallback? onTap;
  const LoginSignUpButton(
      {Key? key,
      required this.height,
      required this.width,
      this.buttonColor,
      this.text,
      this.textColor,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height * 0.07,
        width: width,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(204, 6, 50, 1.0),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
            child: Text('$text',
                style:
                    GoogleFonts.montserrat(fontSize: 20, color: Colors.white))),
      ),
    );
  }
}
