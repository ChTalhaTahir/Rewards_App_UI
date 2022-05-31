import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/route_names.dart';
import 'package:flutter_application_1/view/signup_screen.dart';
import 'package:flutter_application_1/view/spin_weel_screen.dart';
import 'package:flutter_application_1/view/widgets/input_field.dart';
import 'package:flutter_application_1/view/widgets/login_signup_buttons.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = RouteName.loginScreen;
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late double height, width;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: height * 0.53,
          child: const Image(
            image: AssetImage('assets/images/bgloginimg.jpg'),
          ),
        ),
        SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: height * 0.1,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, height * 0.05, height * 0.3, 0),
                child: Container(
                  height: height * 0.1,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/fortunaLogo.png'),
                  )),
                )),
            Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                  height: height * 0.12,
                  width: width * 0.5,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text('Welcome!',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35)),
                  )),
            ),
            SizedBox(
              height: height * 0.65,
              width: width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InputField(
                    height: height,
                    width: width,
                    label: 'Email',
                    hintText: '',
                    textEditingController: _emailController,
                    textInputAction: TextInputAction.next,
                    fieldValidator: (value) =>
                        FormValidator.emailFieldValidator(value),
                  ),
                  InputField(
                    height: height,
                    width: width,
                    hintText: '',
                    label: 'Password',
                    fieldValidator: (value) =>
                        FormValidator.passwordFieldValidator(value),
                    textEditingController: _passwordController,
                    textInputAction: TextInputAction.next,
                  ),
                  LoginSignUpButton(
                    height: height,
                    width: width,
                    buttonColor: const Color(0xffCC0632),
                    text: 'LOGIN',
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, SpinWeelScreen.routeName);
                    },
                  ),
                  LoginSignUpButton(
                    height: height,
                    width: width,
                    buttonColor: Colors.white,
                    text: 'SIGN UP',
                    textColor: const Color(0xffCC0632),
                    onTap: () {
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.8,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      'Forgot password?',
                      style: GoogleFonts.montserrat(
                          decoration: TextDecoration.underline,
                          color: const Color.fromRGBO(158, 158, 158, 1)),
                    )),
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.8,
                    alignment: Alignment.center,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'Or sign up using',
                      style: GoogleFonts.montserrat(color: Colors.black),
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      height: height * 0.1,
                      width: width * 0.25,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/facebookicon.jpg'))),
                    ),
                    Container(
                      height: height * 0.1,
                      width: width * 0.25,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/googleicon.jpg'))),
                    )
                  ])
                ],
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
