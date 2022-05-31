import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/route_names.dart';
import 'package:flutter_application_1/view/widgets/offers_container.dart';
import 'package:flutter_application_1/view/widgets/task_info_offer_container.dart';

class OfferScreen extends StatefulWidget {
  static const String routeName = RouteName.offersScreen;
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          actions: const [
            Icon(
              Icons.share,
              color: Colors.white,
            )
          ],
        ),
        body: Container(
          color: Colors.pink,
          alignment: Alignment.center,
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            OfferContainer(
              height: height,
              width: width,
              imageURL: 'assets/images/catageory_image.png',
              gameTitle: 'PictureThis app',
              rating: 'Rating',
              avgTime: 'Average time',
              otherCatagoery: 'Entertainment',
            ),
            TaskIndoContainer(
                height: height,
                width: width,
                firstPoints: 100,
                secondPoints: 100,
                firstContent: 'Registration',
                secondContent: 'Schedule',
                description:
                    'Instantly identify plants. Accurate, fast and content rich! In addition to description and plant care tips, enjoy beautiful plant pictures around the world.PictureThis helps more than 30,000,000 users identify, learn, and enjoy all kinds of plants...'),
          ])),
        ));
  }
}
