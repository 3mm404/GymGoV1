import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/theme_mode.dart';

class ThemeController extends ValueNotifier<ThemeMode> {
  ThemeController() : super(ThemeMode.light);

  void toggleTheme() {
    value = value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  ThemeData get themeData =>
      value == ThemeMode.light ? AppTheme.lightTheme : AppTheme.darkTheme;

  void changeTheme(BuildContext context) {}
}
