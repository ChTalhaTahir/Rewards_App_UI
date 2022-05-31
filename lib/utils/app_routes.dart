import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/faq_screen.dart';
import 'package:flutter_application_1/view/home_screen.dart';
import 'package:flutter_application_1/view/login_screen.dart';
import 'package:flutter_application_1/view/offer_screen.dart';
import 'package:flutter_application_1/view/spin_weel_screen.dart';

import '../view/gift_cards_screen.dart';
import '../view/home_offers_screen.dart';
import '../view/profile_screen.dart';
import '../view/rewards_screen.dart';
import '../view/signup_screen.dart';

Map<String, WidgetBuilder> appRoute() {
  return {
    LoginScreen.routeName: ((context) => const LoginScreen()),
    SignUpScreen.routeName: ((context) => const SignUpScreen()),
    SpinWeelScreen.routeName: ((context) => const SpinWeelScreen()),
    HomeScreen.routeName: ((context) => const HomeScreen()),
    HomeOffersScreen.routeName: ((context) => const HomeOffersScreen()),
    OfferScreen.routeName: ((context) => const OfferScreen()),
    ProfileScreen.routeName: ((context) => const ProfileScreen()),
    RewardsScreen.routeName: ((context) => const RewardsScreen()),
    GiftCardsScreen.routeName: ((context) => const GiftCardsScreen()),
    FaqScreen.routeName: ((context) => const FaqScreen()),
  };
}
