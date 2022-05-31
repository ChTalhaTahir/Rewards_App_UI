// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/route_names.dart';
import 'package:flutter_application_1/view/faq_screen.dart';
import 'package:flutter_application_1/view/gift_cards_screen.dart';
import 'package:flutter_application_1/view/rewards_screen.dart';
import 'package:flutter_application_1/view/widgets/dialogs/settings_dialog.dart';

import 'package:google_fonts/google_fonts.dart';

enum Menu { itemOne, itemTwo, itemThree }

class ProfileScreen extends StatefulWidget {
  static const String routeName = RouteName.profileScreen;
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late double height, width;

  String _selectedMenu = '';
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color(0xffE5E5E5),
          elevation: 0,
          actions: [
            PopupMenuButton<Menu>(
                onSelected: (Menu item) {
                  _selectedMenu = item.name;
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                      PopupMenuItem<Menu>(
                        value: Menu.itemOne,
                        child: GestureDetector(
                          onTap: () =>
                              showSettingDialog(context, height, width),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.settings,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: width * 0.1,
                              ),
                              Text(
                                'Settings',
                                style: GoogleFonts.montserrat(),
                              )
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem<Menu>(
                        value: Menu.itemTwo,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.password,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: width * 0.1,
                            ),
                            Text(
                              'Change password',
                              style: GoogleFonts.montserrat(),
                            )
                          ],
                        ),
                      ),
                      PopupMenuItem<Menu>(
                        value: Menu.itemThree,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.logout,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: width * 0.1,
                            ),
                            Text(
                              'Log out',
                              style: GoogleFonts.montserrat(),
                            )
                          ],
                        ),
                      ),
                    ])
          ]),
      body: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          color: const Color(0xffE5E5E5),
          child: Stack(children: [
            Center(
              child: Container(
                height: height * 0.6,
                width: width * 0.93,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UserDataCard(height: height, width: width),
                    Row(
                      children: [
                        SizedBox(width: width * 0.023),
                        ProfileCard(
                          height: height,
                          width: width,
                          cardTitle: 'My Rewards',
                          color: const Color(0xffFFE7ED),
                          image: 'assets/images/trophy_icon.png',
                          points: '110',
                          textColor: const Color(0xffCC0632),
                          onTap: () {
                            Navigator.pushNamed(
                                context, RewardsScreen.routeName);
                          },
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        ProfileCard(
                          height: height,
                          width: width,
                          cardTitle: 'Gift Cards',
                          color: const Color(0xffF5E6FB),
                          image: 'assets/images/trophy_icon.png',
                          points: '110',
                          textColor: const Color(0xff52006A),
                          onTap: () {
                            Navigator.pushNamed(
                                context, GiftCardsScreen.routeName);
                          },
                        ),
                      ],
                    ),
                    FAQTile(height: height, width: width)
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: height * 0.22,
                width: width * 0.5,
                child: const Align(
                    alignment: Alignment.center,
                    child: Image(
                        image: AssetImage('assets/images/profile_image.png'))),
              ),
            ),
          ])),
    );
  }
}

class FAQTile extends StatelessWidget {
  final double height;
  final double width;
  const FAQTile({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, FaqScreen.routeName);
      },
      child: Container(
        height: height * 0.07,
        width: width * 0.85,
        decoration: BoxDecoration(
            color: const Color(0xffFFEAD8),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            SizedBox(
              width: width * 0.05,
            ),
            const Icon(
              Icons.message,
              color: Color(0xffFF7600),
            ),
            SizedBox(
              width: width * 0.05,
            ),
            Text('FAQs',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: const Color(0xffFF7600))),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final double height;
  final double width;
  final String? points;
  final String? cardTitle;
  final Color? color;
  final String? image;
  final Color? textColor;
  final GestureTapCallback? onTap;
  const ProfileCard(
      {Key? key,
      required this.height,
      required this.width,
      this.points = '110',
      this.cardTitle = 'MY REWARDS',
      this.color,
      this.image,
      this.onTap,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.2,
        width: width * 0.42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.002,
            ),
            SizedBox(
                height: height * 0.05,
                width: width * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                      image: const AssetImage('assets/images/trophy_icon.png'),
                      color: textColor,
                      height: height * 0.03,
                    )
                  ],
                )),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                '$points',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: height * 0.033,
                    color: textColor),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                '$cardTitle',
                style: GoogleFonts.montserrat(
                    fontSize: height * 0.018, color: textColor),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class UserDataCard extends StatelessWidget {
  final double height;
  final double width;
  final String? userName;
  final String? countryName;
  final String? dateOfBirth;
  final String? emailAddress;
  const UserDataCard(
      {Key? key,
      required this.height,
      required this.width,
      this.userName = 'Kristian Wetsin',
      this.countryName = 'Canada',
      this.dateOfBirth = 'Jan 1, 1989',
      this.emailAddress = 'kristianwetsin99@gmail.com'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.25,
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffF5F5F5),
      ),
      child: Column(
        children: [
          SizedBox(
              height: height * 0.05,
              width: width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.edit,
                    color: Colors.black,
                  )
                ],
              )),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  '$userName',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: height * 0.033,
                      color: Colors.black),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: const Color(0xff757575),
                      size: height * 0.026,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      '$countryName',
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.023,
                          color: const Color(0xff757575)),
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Icon(
                      Icons.badge,
                      color: const Color(0xff757575),
                      size: height * 0.026,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      '$dateOfBirth',
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.023,
                          color: const Color(0xff757575)),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      color: const Color(0xff757575),
                      size: height * 0.023,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      '$emailAddress',
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.02,
                          color: const Color(0xff757575)),
                    ),
                  ],
                )
              ]),
        ],
      ),
    );
  }
}
