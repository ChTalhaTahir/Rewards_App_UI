import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widgets/custom_app_bar.dart';
import 'package:flutter_application_1/view/widgets/dialogs/redeem_dialog.dart';

import 'package:google_fonts/google_fonts.dart';

class RedeemScreen extends StatefulWidget {
  const RedeemScreen({Key? key}) : super(key: key);

  @override
  State<RedeemScreen> createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
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
        color: const Color(0xffE5E5E5),
        child: ListView.builder(
          itemBuilder: (context, index) =>
              ItemRedeem(height: height, width: width),
          itemCount: 7,
        ),
      ),
    );
  }
}

class RedeemButtom extends StatelessWidget {
  final double height;
  final GestureTapCallback? onTap;
  const RedeemButtom({Key? key, required this.height, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Text(
          'REDEEM',
          style: GoogleFonts.montserrat(
              fontSize: height * 0.026, color: Colors.white),
        ),
      ),
    );
  }
}

class ItemRedeem extends StatelessWidget {
  final double height;
  final double width;
  final String? imgUrl;
  final String? rewardAmount;
  final String? companyName;
  final String? cardType;
  final int? points;

  const ItemRedeem(
      {Key? key,
      required this.height,
      required this.width,
      this.imgUrl = 'assets/images/starbucks_redeem_image.png',
      this.rewardAmount = '\$25',
      this.companyName = 'Starbucks',
      this.cardType = 'GIFT CARD',
      this.points = 10000})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: height * 0.20,
          width: width * 0.9,
          alignment: Alignment.center,
          child: Container(
              height: height * 0.17,
              width: width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF5F5F5)),
              child: Row(children: [
                Container(
                    height: height * 0.13,
                    width: width * 0.26,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage('$imgUrl')),
                    )),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: height * 0.085,
                            width: width * 0.17,
                            alignment: Alignment.centerLeft,
                            child: Text('$rewardAmount',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: height * 0.032,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            width: width * 0.11,
                          ),
                          Container(
                            height: height * 0.035,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: const Color(0xffFFEAD8)),
                            alignment: Alignment.center,
                            child: Text(
                              '$points points',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.015,
                                  color: const Color(0xffFF7600)),
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text('$companyName',
                                  style: GoogleFonts.montserrat(
                                      color: const Color(0xff0A0A0A),
                                      fontSize: height * 0.021,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Text('$cardType',
                                  style: GoogleFonts.montserrat(
                                    color: const Color(0xff616161),
                                    fontSize: height * 0.015,
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.07,
                          ),
                          Container(
                              height: height * 0.06,
                              width: width * 0.33,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffCC0632),
                              ),
                              alignment: Alignment.center,
                              child: RedeemButtom(
                                height: height,
                                onTap: () {
                                  showRedeemDialog(context,
                                      height: height, width: width);
                                },
                              )),
                        ],
                      ),
                    ])
              ]))),
    );
  }
}
