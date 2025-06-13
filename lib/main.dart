import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/auth_check_screen.dart';
import 'package:flutter_application_1/auth/page/login_page.dart';
import 'package:flutter_application_1/controllers/theme_controller.dart.dart';
import 'package:flutter_application_1/custom/navigation_bottons.dart';
import 'package:flutter_application_1/themes/theme_mode.dart';
import 'package:flutter_application_1/screens/settings_screen.dart';
import 'package:flutter_application_1/api/services/user_information.dart';
import 'package:provider/provider.dart';

final ThemeController themeController = ThemeController();

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => themeController),
        Provider(create: (_) => UserInformationService()),
      ],
      child: ValueListenableBuilder<ThemeMode>(
        valueListenable: themeController,
        builder: (context, themeMode, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeMode,
            home: const AuthCheckScreen(), // Verifica si está logueado
            routes: {
              '/login': (_) => const LoginScreen(),
              '/home': (_) => const NavigationBottons(),
              '/settings': (_) => const SettingsScreen(),
            },
          );
        },
      ),
    );
  }
}
