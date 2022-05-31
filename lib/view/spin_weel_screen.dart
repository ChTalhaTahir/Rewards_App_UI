import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/route_names.dart';
import 'package:flutter_application_1/view/widgets/dialogs/spin_wheel_dialog.dart';

class SpinWeelScreen extends StatefulWidget {
  static const String routeName = RouteName.spinScreen;
  const SpinWeelScreen({Key? key}) : super(key: key);

  @override
  State<SpinWeelScreen> createState() => _SpinWeelScreenState();
}

class _SpinWeelScreenState extends State<SpinWeelScreen> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        color: Colors.red,
        child: InkWell(
          onTap: () {
            showSpinWheelDialog(context, height, width);
          },
          child: Container(
            height: height * 0.05,
            width: width * 0.4,
            alignment: Alignment.center,
            color: Colors.blue,
            child: const Text(
              'Spin',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
