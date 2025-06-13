import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors/colors_theme.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 197, 221, 228),
    brightness: Brightness.light,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.surfaceLight,
      selectedItemColor: AppColors.selectedNavItemLight,
      unselectedItemColor: AppColors.selectedNavItemLight,
      selectedIconTheme: IconThemeData(color: AppColors.selectedNavItemLight),
      unselectedIconTheme: IconThemeData(color: AppColors.selectedNavItemLight),
      selectedLabelStyle: TextStyle(color: AppColors.textPrimaryLight),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundDark,
    brightness: Brightness.dark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: AppColors.selectedNavItemDark,
      unselectedItemColor: AppColors.selectedNavItemDark,
      selectedIconTheme: IconThemeData(color: AppColors.selectedNavItemDark),
      unselectedIconTheme: IconThemeData(color: AppColors.selectedNavItemDark),
      selectedLabelStyle: TextStyle(color: AppColors.textPrimaryDark),
    ),
  );
}
