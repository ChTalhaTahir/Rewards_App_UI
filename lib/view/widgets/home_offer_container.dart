import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeOfferContainer extends StatelessWidget {
  final double height;
  final double width;
  final String? imageURL;
  final String? gameTitle;
  final String? rating;
  final String? avgTime;
  final int? totalPoints;
  final GestureTapCallback? onTap;
  const HomeOfferContainer(
      {Key? key,
      required this.height,
      required this.width,
      this.gameTitle,
      this.rating,
      this.avgTime,
      this.totalPoints,
      this.onTap,
      this.imageURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height * 0.28,
          width: width * 0.75,
          alignment: Alignment.center,
          child: Container(
            height: height * 0.22,
            width: width * 0.65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF5F5F5)),
            child: Stack(children: [
              Column(children: [
                Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: height * 0.085,
                            width: width * 0.17,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('$imageURL')),
                            )),
                        SizedBox(
                          height: height * 0.085,
                          width: width * 0.4,
                          child: Text('$gameTitle',
                              style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: height * 0.0225,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Text('$rating',
                            style: GoogleFonts.montserrat(
                                color: const Color(0xff616161),
                                fontSize: height * 0.018)),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Text('$avgTime',
                            style: GoogleFonts.montserrat(
                                color: const Color(0xff616161),
                                fontSize: height * 0.018)),
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.04,
                      ),
                      SizedBox(
                        height: height * 0.02,
                        width: width * 0.16,
                        child: Row(
                          children: [
                            RatingStars(
                                starIcon: const Icon(Icons.star),
                                height: height),
                            RatingStars(
                              starIcon: const Icon(Icons.star),
                              height: height,
                            ),
                            RatingStars(
                              starIcon: const Icon(Icons.star),
                              height: height,
                            ),
                            RatingStars(
                              starIcon: const Icon(Icons.star),
                              height: height,
                            ),
                            RatingStars(
                              starIcon: const Icon(Icons.star_half),
                              height: height,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Container(
                        height: height * 0.02,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffC4C4C4),
                        ),
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: height * 0.02,
                          width: width * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xffFF7600),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: height * 0.09,
                  width: width * 0.18,
                  alignment: Alignment.center,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.18,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8)),
                        color: Color(0xffFFA900),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '+$totalPoints',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: height * 0.025),
                      ),
                    ),
                  ),
                ),
              )
            ]),
          )),
    );
  }
}

class RatingStars extends StatelessWidget {
  final double height;
  final Icon? starIcon;
  const RatingStars({Key? key, required this.height, this.starIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      starIcon?.icon,
      color: const Color(0xffFF7600),
      size: height * 0.015,
    );
  }
}
