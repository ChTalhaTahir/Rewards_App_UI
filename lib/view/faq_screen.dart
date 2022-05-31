import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/route_names.dart';

import 'package:google_fonts/google_fonts.dart';

class FaqScreen extends StatefulWidget {
  static const String routeName = RouteName.faqScreen;
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
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
      body: Container(
        color: const Color(0xffE5E5E5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              CircleAvatar(
                  backgroundColor: const Color(0xffFF7600),
                  maxRadius: height * 0.08,
                  child: Icon(
                    Icons.message,
                    size: height * 0.0454,
                    color: Colors.white,
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              Text('FAQs',
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: height * 0.05,
              ),
              myContainer(),
              SizedBox(
                height: height * 0.01,
              ),
              myContainer(),
              SizedBox(
                height: height * 0.01,
              ),
              myContainer(),
              SizedBox(
                height: height * 0.01,
              ),
              myContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget myContainer() {
    return Container(
      color: const Color(0xffF5F5F5),
      child: ExpansionTile(
        title: const Text('How can I use this app'),
        backgroundColor: const Color(0xffE5E5E5),
        children: <Widget>[
          Container(
            height: height * 0.2,
            width: width * 0.9,
            color: const Color(0xffF5F5F5),
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              child: Text(
                'Instantly identify plants. Accurate, fast and content rich! In addition to description and plant care tips, enjoy beautiful plant pictures around the world. PictureThis helps more than 30,000,000 users identify, learn, and enjoy all kinds of plants...',
                style: GoogleFonts.montserrat(
                    fontSize: height * 0.02, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
