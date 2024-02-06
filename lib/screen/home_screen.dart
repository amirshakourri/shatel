import 'package:flutter/material.dart';
import 'package:shatel/screen/about_us_screen.dart';
import 'package:shatel/screen/internet_screen.dart';
import 'package:shatel/screen/messages_screen.dart';
import 'package:shatel/screen/shatel_club.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List screens = [
    //*Internet Screen
    const InternetScreen(),
    //*
    const ShatelClub(),
    //* Messages Screen
    const MessagesScreen(),

    //* AboutUs Screen
    const AboutUsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          shadowColor: Colors.white,
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: const MaterialStatePropertyAll(
            TextStyle(
              fontFamily: 'SB',
            ),
          ),
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: NavigationBar(
            surfaceTintColor: Colors.white,
            height: 70,
            selectedIndex: index,
            backgroundColor: Colors.white,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            animationDuration: const Duration(seconds: 1),
            onDestinationSelected: (index) {
              setState(() => this.index = index);
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.wifi),
                selectedIcon: Icon(Icons.wifi_rounded),
                label: "اینترنت",
              ),
              NavigationDestination(
                icon: Icon(Icons.people),
                selectedIcon: Icon(Icons.people),
                label: "باشگاه",
              ),
              NavigationDestination(
                icon: Icon(Icons.notifications_outlined),
                selectedIcon: Icon(Icons.notifications),
                label: "پیام ها",
              ),
              NavigationDestination(
                icon: Icon(Icons.apple),
                label: "درباره ما",
              )
            ],
          ),
        ),
      ),
    );
  }
}
