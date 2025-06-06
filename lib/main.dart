import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/navigation_bottons.dart';
import 'package:flutter_application_1/custom/theme_controller.dart.dart';
import 'package:flutter_application_1/themes/theme_mode.dart';

final themeController = ThemeController();

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeController,
      builder: (context, themeMode, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeMode,
          home: const NavigationBottons(),
        );
      },
    );
  }
}
