import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/route_names.dart';
import 'package:flutter_application_1/view/widgets/rewards_gift_offer_cards.dart';

import 'package:google_fonts/google_fonts.dart';

class GiftCardsScreen extends StatefulWidget {
  static const String routeName = RouteName.giftCardScreen;
  const GiftCardsScreen({Key? key}) : super(key: key);

  @override
  State<GiftCardsScreen> createState() => _GiftCardsScreenState();
}

class _GiftCardsScreenState extends State<GiftCardsScreen> {
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
                backgroundColor: const Color(0xff52006A),
                maxRadius: height * 0.08,
                child: const Center(
                    child:
                        Image(image: AssetImage('assets/images/box_icon.png'))),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text('12',
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.06,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    color: const Color(0xff52006A),
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              Text('My gift cards',
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.025,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    color: Colors.black,
                  )),
              SizedBox(
                height: height * 0.02,
              ),
              RewardGiftCard(
                height: height,
                width: width,
                imageIconPath: 'assets/images/starbucks_redeem_image.png',
                mainText: 'Starbucks',
                subText: 'redeemed on Jun 29,2021',
                boxColor: Colors.white,
                totalPricePoints: 25,
              ),
              RewardGiftCard(
                height: height,
                width: width,
                imageIconPath: 'assets/images/starbucks_redeem_image.png',
                mainText: 'Starbucks',
                subText: 'redeemed on Jun 29,2021',
                boxColor: Colors.white,
                totalPricePoints: 25,
              ),
              RewardGiftCard(
                height: height,
                width: width,
                imageIconPath: 'assets/images/starbucks_redeem_image.png',
                mainText: 'Starbucks',
                subText: 'redeemed on Jun 29,2021',
                boxColor: Colors.white,
                totalPricePoints: 25,
              ),
              RewardGiftCard(
                height: height,
                width: width,
                imageIconPath: 'assets/images/starbucks_redeem_image.png',
                mainText: 'Starbucks',
                subText: 'redeemed on Jun 29,2021',
                boxColor: Colors.white,
                totalPricePoints: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
