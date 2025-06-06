import 'package:flutter/material.dart';
import 'package:flutter_application_1/l10n/strings.dart';
import 'package:flutter_application_1/pages/home.page.dart';
import 'package:flutter_application_1/pages/membership..page.dart';
import 'package:flutter_application_1/pages/mykey.dart';
import 'package:flutter_application_1/pages/searchgym.dart';
import 'package:flutter_application_1/pages/setting.page.dart';

class NavigationBottons extends StatefulWidget {
  const NavigationBottons({super.key});

  @override
  State<NavigationBottons> createState() => _NavigationBottonsState();
}

class _NavigationBottonsState extends State<NavigationBottons> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const Membership(),
    const MyKey(),
    const SearchGym(),
    const SettingUser(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor:
            Theme.of(context).bottomNavigationBarTheme.selectedItemColor ??
            Colors.blueAccent,
        unselectedItemColor:
            Theme.of(context).bottomNavigationBarTheme.unselectedItemColor ??
            Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: StringsLanguage.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            label: StringsLanguage.membership,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: StringsLanguage.myKey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: StringsLanguage.search,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: StringsLanguage.profile,
          ),
        ],
      ),
    );
  }
}
