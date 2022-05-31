import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> showSettingDialog(
  BuildContext context,
  double height,
  double width,
) async {
  bool _isSwitched = false;

  await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Dialog(
            child: Container(
              height: height * 0.5,
              width: width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Settings",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            color: const Color(0xff424242),
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Email Notification'),
                          Card(
                            child: Switch(
                                value: _isSwitched,
                                onChanged: (value) {
                                  _isSwitched = value;
                                }),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Push Notification'),
                          Card(
                            child: Switch(
                                value: _isSwitched,
                                onChanged: (value) {
                                  _isSwitched = value;
                                }),
                          )
                        ],
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromRGBO(204, 6, 50, 1.0)),
                        alignment: Alignment.center,
                        child: Text(
                          'SAVE',
                          style: GoogleFonts.montserrat(
                            fontSize: height * 0.025,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: height * 0.07,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(204, 6, 50, 1.0)),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                          alignment: Alignment.center,
                          child: Text(
                            'CANCEL',
                            style: GoogleFonts.montserrat(
                              fontSize: height * 0.025,
                              color: const Color.fromRGBO(204, 6, 50, 1.0),
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          ),
        );
      });
}
