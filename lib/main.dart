import 'package:flutter/material.dart';

import 'package:flutter_application_1/utils/app_routes.dart';
import 'package:flutter_application_1/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: appRoute(),
      initialRoute: LoginScreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
