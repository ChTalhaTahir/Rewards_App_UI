import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/route_names.dart';

import 'package:flutter_application_1/view/redeem_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_offers_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = RouteName.homeScreen;
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;
  late double height, width;
  static const List<Widget> _widgetOptions = <Widget>[
    RedeemScreen(),
    HomeOffersScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xffE5E5E5),
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: GoogleFonts.montserrat(color: Colors.black),
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xffCC0632),
          iconSize: height * 0.035,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
