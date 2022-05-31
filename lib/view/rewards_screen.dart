import 'package:flutter/material.dart';

import 'package:flutter_application_1/utils/route_names.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardsScreen extends StatefulWidget {
  static const String routeName = RouteName.rewardScreen;
  const RewardsScreen({Key? key}) : super(key: key);

  @override
  State<RewardsScreen> createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffE5E5E5),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xffE5E5E5),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              CircleAvatar(
                backgroundColor: const Color(0xffCC0632),
                maxRadius: height * 0.08,
                child: Center(
                    child: Image(
                        height: height * 0.06,
                        color: Colors.white,
                        image:
                            const AssetImage('assets/images/trophy_icon.png'))),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text('110',
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.06,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    color: const Color(0xffCC0632),
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              Text('My Rewards',
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.025,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    color: Colors.black,
                  )),
              SizedBox(
                height: height * 0.02,
              ),
              myContainer(const Icon(Icons.compare_arrows_rounded)),
              myContainer(const Icon(Icons.share)),
              myContainer(const Icon(Icons.compare_arrows_rounded)),
              myContainer(const Icon(Icons.share)),
            ],
          ),
        ),
      ),
    );
  }

  Widget myContainer(Icon mainIcon) {
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
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height * 0.08,
                      width: width * 0.18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffFFE7ED)),
                      alignment: Alignment.center,
                      child: Icon(
                        mainIcon.icon,
                        color: const Color(0xffCC0632),
                        size: height * 0.06,
                      ),
                    ),
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
                                    height: height * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.055,
                                    width: width * 0.38,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Daily wheel',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontSize: height * 0.028,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    height: height * 0.058,
                                    width: width * 0.45,
                                    child: Text('Awarded on Jun 28, 2021',
                                        style: GoogleFonts.montserrat(
                                            color: const Color(0xff0A0A0A),
                                            fontSize: height * 0.016,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Container(
                                height: height * 0.045,
                                width: width * 0.23,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: const Color(0xffFFEAD8)),
                                alignment: Alignment.center,
                                child: Text(
                                  '100 points',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: height * 0.017,
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
