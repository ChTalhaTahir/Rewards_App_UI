import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardGiftCard extends StatelessWidget {
  final double height;
  final double width;
  final String? imageIconPath;
  final Color? boxColor;
  final String? mainText;
  final String? subText;
  final int? totalPricePoints;
  const RewardGiftCard(
      {Key? key,
      required this.height,
      required this.width,
      this.imageIconPath,
      this.boxColor,
      this.mainText,
      this.subText,
      this.totalPricePoints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: height * 0.18,
          width: width * 0.93,
          alignment: Alignment.center,
          child: Container(
              height: height * 0.15,
              width: width * 0.93,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF5F5F5)),
              child: Row(children: [
                Container(
                    height: height * 0.1,
                    width: width * 0.22,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('$imageIconPath')),
                    )),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height * 0.012,
                              ),
                              Container(
                                height: height * 0.055,
                                width: width * 0.38,
                                alignment: Alignment.centerLeft,
                                child: Text('$mainText',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: height * 0.028,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                height: height * 0.058,
                                width: width * 0.45,
                                child: Text('$subText',
                                    style: GoogleFonts.montserrat(
                                        color: const Color(0xff0A0A0A),
                                        fontSize: height * 0.016,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            height: height * 0.045,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: const Color(0xffFFEAD8)),
                            alignment: Alignment.center,
                            child: Text(
                              '\$$totalPricePoints',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: height * 0.018,
                                  color: const Color(0xffFF7600)),
                            ),
                          )
                        ],
                      ),
                    ])
              ]))),
    );
  }
}
