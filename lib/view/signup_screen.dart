// ignore_for_file: unnecessary_null_comparison

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_application_1/utils/route_names.dart';
import 'package:flutter_application_1/view/widgets/input_field.dart';
import 'package:flutter_application_1/view/widgets/login_signup_buttons.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = RouteName.sigUpScreen;
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late double height;
  late double width;
  int? _myValue = 1;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  XFile? userImage;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Stack(children: [
                Center(
                  child: CircleAvatar(
                    maxRadius: height * 0.1,
                    backgroundImage: FileImage(File(userImage!.path)),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(height * 0.17, height * 0.12, 0, 0),
                  child: Container(
                    height: height * 0.07,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(82, 0, 106, 1)),
                    child: Center(
                        child: InkWell(
                      onTap: (() async {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Center(
                                child: Dialog(
                                    child: SizedBox(
                                  height: height * 0.4,
                                  child: Column(children: [
                                    InkWell(
                                      onTap: (() async {
                                        userImage = await _picker.pickImage(
                                            source: ImageSource.camera);
                                        setState(() {});
                                      }),
                                      child: const ListTile(
                                        title: Text('Camera'),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        userImage = await _picker.pickImage(
                                            source: ImageSource.gallery);
                                        setState(() {});
                                      },
                                      child: const ListTile(
                                        title: Text('Gallery'),
                                      ),
                                    )
                                  ]),
                                )),
                              );
                            });
                      }),
                      child: Icon(
                        Icons.add_a_photo_outlined,
                        size: height * 0.04,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ]),
              SizedBox(
                height: height * 0.035,
              ),
              InputField(
                height: height,
                width: width,
                label: 'Full name',
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                hintText: 'Kristian Winsten',
              ),
              SizedBox(
                height: height * 0.035,
              ),
              InputField(
                height: height,
                width: width,
                label: 'Email',
                fieldValidator: (value) =>
                    FormValidator.emailFieldValidator(value),
                textEditingController: _emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                hintText: 'kristianwinsten99@gmail.com',
              ),
              SizedBox(
                height: height * 0.035,
              ),
              InputField(
                height: height,
                width: width,
                label: 'Password',
                fieldValidator: (value) =>
                    FormValidator.passwordFieldValidator(value),
                textEditingController: _passwordController,
                textInputAction: TextInputAction.next,
                hintText: '',
              ),
              SizedBox(
                height: height * 0.035,
              ),
              InputField(
                height: height,
                width: width,
                label: 'Confirm password',
                textEditingController: _passwordController,
                textInputAction: TextInputAction.next,
                hintText: '',
              ),
              SizedBox(
                height: height * 0.035,
              ),
              InputField(
                height: height,
                width: width,
                label: 'Date of birth',
                textInputAction: TextInputAction.next,
                hintText: 'Jan 1,1989',
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                  height: height * 0.03,
                  width: width * 0.88,
                  child: const Text('Select gender:')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 1,
                    groupValue: _myValue,
                    onChanged: (value) {
                      setState(() {
                        _myValue = value as int?;
                      });
                    },
                  ),
                  const Text('Male'),
                  Radio(
                      value: 2,
                      groupValue: _myValue,
                      onChanged: (value) {
                        setState(() {
                          _myValue = value as int?;
                        });
                      }),
                  const Text('Female'),
                  Radio(
                      value: 3,
                      groupValue: _myValue,
                      onChanged: (value) {
                        setState(() {
                          _myValue = value as int?;
                        });
                      }),
                  const Text('Other')
                ],
              ),
              SizedBox(
                height: height * 0.035,
              ),
              InputField(
                height: height,
                width: width,
                label: 'Select Country',
                textInputAction: TextInputAction.next,
                hintText: 'Canada',
              ),
              SizedBox(
                height: height * 0.035,
              ),
              InputField(
                height: height,
                width: width,
                label: 'Referral code',
                textInputAction: TextInputAction.next,
                hintText: '',
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Row(
                children: [
                  Checkbox(
                      value: true,
                      onChanged: (value) {
                        setState(() {
                          if (value == true) {
                            value = false;
                          } else {
                            value = true;
                          }
                        });
                      }),
                  const Text('I agree to the terms & conditionms')
                ],
              ),
              SizedBox(
                height: height * 0.035,
              ),
              LoginSignUpButton(
                height: height,
                width: width * 0.9,
                buttonColor: const Color(0xffCC0632),
                text: 'REGISTER',
                textColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                },
              ),
              SizedBox(
                height: height * 0.02,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FormValidator {
  static String? passwordFieldValidator(String? value) {
    final RegExp _passwordExp =
        RegExp(r'^(?=.*?[A-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isNotEmpty &&
        value.length >= 8 &&
        value.contains(_passwordExp)) {
      return null;
    } else {
      return 'Should be 8 character long, Must include '
          '\nAlphabets,digits,and special characters';
    }
  }

  static String? emailFieldValidator(String? value) {
    final RegExp _emailExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))'
        r'@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.'
        r'[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (value!.isNotEmpty && value.contains(_emailExp)) {
      return null;
    } else {
      return 'Enter valid Email Id';
    }
  }

  static String? textFieldValidator(String? value, String? errorText) {
    if (value!.isNotEmpty) {
      return null;
    } else {
      return errorText;
    }
  }
}
