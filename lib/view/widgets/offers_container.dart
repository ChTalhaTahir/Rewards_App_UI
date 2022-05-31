import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferContainer extends StatelessWidget {
  final double height;
  final double width;
  final String? imageURL;
  final String? gameTitle;
  final String? rating;
  final String? avgTime;
  final String? otherCatagoery;
  const OfferContainer(
      {Key? key,
      required this.height,
      required this.width,
      this.imageURL,
      this.gameTitle,
      this.rating,
      this.avgTime,
      this.otherCatagoery})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height * 0.28,
        width: width * 0.95,
        alignment: Alignment.center,
        child: Container(
            height: height * 0.22,
            width: width * 0.95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF5F5F5)),
            child: Row(children: [
              Container(
                  height: height * 0.18,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage('$imageURL')),
                  )),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height * 0.085,
                      width: width * 0.5,
                      alignment: Alignment.centerLeft,
                      child: Text('$gameTitle',
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      children: [
                        Text('$rating',
                            style: GoogleFonts.montserrat(
                                color: const Color(0xff616161),
                                fontSize: height * 0.018)),
                        SizedBox(
                          width: width * 0.07,
                        ),
                        Text('$avgTime',
                            style: GoogleFonts.montserrat(
                                color: const Color(0xff616161),
                                fontSize: height * 0.018)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                          width: width * 0.07,
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
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Center(
                      child: Container(
                        height: height * 0.05,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF5E6FB),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '$otherCatagoery',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: height * 0.02,
                              color: const Color(0xff52006A)),
                        ),
                      ),
                    )
                  ])
            ])));
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
