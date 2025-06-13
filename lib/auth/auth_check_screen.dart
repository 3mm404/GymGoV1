import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/page/login_page.dart';
import 'package:flutter_application_1/custom/navigation_bottons.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthCheckScreen extends StatelessWidget {
  const AuthCheckScreen({super.key});

  Future<bool> _isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _isLoggedIn(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.data == true) {
          return const NavigationBottons(); // Ya está logueado
        } else {
          return const LoginScreen(); // No está logueado
        }
      },
    );
  }
}
