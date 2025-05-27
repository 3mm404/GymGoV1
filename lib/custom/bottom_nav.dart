import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/SettingUser.dart';
import 'package:flutter_application_1/screens/gym_zone.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/mymmeberships.dart';
import 'package:flutter_application_1/screens/myqr.dart';

class NavBarButtons extends StatefulWidget {
  const NavBarButtons({super.key});

  @override
  State<NavBarButtons> createState() => _NavBarButtonsState();
}

class _NavBarButtonsState extends State<NavBarButtons> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const MyMemberships(),
    const MyQrScan(),
    const GymZone(),
    const Settinguser(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            label: 'Membresías',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Mi QR'),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Gimnasios',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
