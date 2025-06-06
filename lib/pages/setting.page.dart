import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart'; // Para acceder al themeController

class SettingUser extends StatelessWidget {
  const SettingUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: () {
          themeController.toggleTheme();
        },
        icon: const Icon(Icons.brightness_6),
        label: const Text("Cambiar modo claro/oscuro"),
      ),
    );
  }
}
