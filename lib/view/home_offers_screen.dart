// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/route_names.dart';
import 'package:flutter_application_1/view/offer_screen.dart';
import 'package:flutter_application_1/view/widgets/custom_app_bar.dart';
import 'package:flutter_application_1/view/widgets/home_grid_container.dart';
import 'package:flutter_application_1/view/widgets/home_offer_container.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeOffersScreen extends StatefulWidget {
  static const String routeName = RouteName.homeOffersScreen;
  const HomeOffersScreen({Key? key}) : super(key: key);

  @override
  State<HomeOffersScreen> createState() => _HomeOffersScreenState();
}

class _HomeOffersScreenState extends State<HomeOffersScreen> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(height, width),
      body: Container(
          height: height,
          width: width,
          color: Color(0xffE5E5E5),
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  catageoryContainer('Catageory'),
                  SizedBox(
                    height: height * 0.24,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return HomeOfferContainer(
                            height: height,
                            width: width,
                            imageURL: 'assets/images/catageory_image.png',
                            gameTitle: 'PictureThis app',
                            rating: 'Rating',
                            avgTime: 'Average time',
                            totalPoints: 100,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, OfferScreen.routeName);
                            },
                          );
                        })),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  catageoryContainer('Catageory'),
                  SizedBox(
                    height: height * 0.23,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return HomeOfferContainer(
                            height: height,
                            width: width,
                            imageURL: 'assets/images/catageory_image.png',
                            gameTitle: 'PictureThis app',
                            rating: 'Rating',
                            avgTime: 'Average time',
                            totalPoints: 100,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, OfferScreen.routeName);
                            },
                          );
                        })),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  catageoryContainer('Catageory'),
                  SizedBox(
                    height: height * 0.23,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return HomeOfferContainer(
                            height: height,
                            width: width,
                            imageURL: 'assets/images/catageory_image.png',
                            gameTitle: 'PictureThis app',
                            rating: 'Rating',
                            avgTime: 'Average time',
                            totalPoints: 100,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, OfferScreen.routeName);
                            },
                          );
                        })),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.02),
                catageoryContainer('Other Catageories'),
                SizedBox(height: height * 0.02),
                SizedBox(
                  height: height * 0.35,
                  child: GridView.custom(
                      childrenDelegate: SliverChildListDelegate([
                        HomeGridContainer(
                          height: height,
                          width: width,
                          boxColor: Color(0xffF5E6FB),
                          text: 'Financial',
                          textColor: Color(0xff52006A),
                        ),
                        HomeGridContainer(
                            height: height,
                            width: width,
                            boxColor: Color(0xffFFE7ED),
                            text: 'Sports',
                            textColor: Color(0xffCC0632)),
                        HomeGridContainer(
                            height: height,
                            width: width,
                            boxColor: Color(0xffFFE7ED),
                            text: 'Action',
                            textColor: Color(0xffCC0632)),
                        HomeGridContainer(
                            height: height,
                            width: width,
                            boxColor: Color(0xffFFEAD8),
                            text: 'Education',
                            textColor: Color(0xffFF7600)),
                        HomeGridContainer(
                            height: height,
                            width: width,
                            boxColor: Color(0xffF5E6FB),
                            text: 'Food',
                            textColor: Color(0xff52006A)),
                        HomeGridContainer(
                            height: height,
                            width: width,
                            boxColor: Color(0xffFFEAD8),
                            text: 'Entertainment',
                            textColor: Color(0xffFF7600)),
                      ]),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 0,
                          mainAxisExtent: 60)),
                )
              ],
            ))
          ])),
    );
  }

  Widget catageoryContainer(String headingText) {
    return Container(
        height: height * 0.04,
        width: width * 0.5,
        alignment: Alignment.bottomLeft,
        child: Text(
          '   $headingText',
          style: GoogleFonts.montserrat(
              fontSize: height * 0.023, fontWeight: FontWeight.bold),
        ));
  }
}
