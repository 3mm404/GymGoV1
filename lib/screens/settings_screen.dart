import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();

    // Eliminar el token y otros datos de sesión
    await prefs.remove('token');
    await prefs.remove('isLoggedIn');
    await prefs.remove('userId');
    await prefs.remove('email');
    await prefs.remove('name');
    await prefs.remove('telefono');

    // Navegar de vuelta a la pantalla de login
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configuración')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: const Text('Cambiar Tema'),
              trailing: const Icon(Icons.color_lens),
              onTap: () {
                themeController.toggleTheme();
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Cerrar Sesión'),
              trailing: const Icon(Icons.logout),
              onTap: () => _logout(context),
            ),
          ),
        ],
      ),
    );
  }
}
