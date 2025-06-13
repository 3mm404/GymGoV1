import 'package:flutter/material.dart';
import 'package:flutter_application_1/l10n/strings.dart';
import 'package:flutter_application_1/screens/home.page.dart';
import 'package:flutter_application_1/screens/membership_page.dart';
import 'package:flutter_application_1/screens/my_key_page.dart';
import 'package:flutter_application_1/screens/searchgym.dart';
import 'package:flutter_application_1/screens/settings_screen.dart';

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
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // 🎨 Colores personalizados según modo
    final Color selectedColor = isDark
        ? const Color.fromARGB(255, 0, 255, 255) // Verde claro en oscuro
        : const Color.fromARGB(255, 0, 0, 0); // Verde oscuro en claro

    final Color unselectedColor = isDark
        ? const Color(0xFFB0B0B0)
        : const Color(0xFF888888);

    final Color navBarBackground = isDark
        ? const Color(0xFF1C1C1C) // Fondo oscuro
        : const Color(0xFFF2F2F2); // Fondo claro

    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: navBarBackground,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedIconTheme: IconThemeData(color: selectedColor),
        unselectedIconTheme: IconThemeData(
          color: unselectedColor.withOpacity(0.7),
        ),
        selectedItemColor: selectedColor,
        unselectedItemColor: unselectedColor,
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
