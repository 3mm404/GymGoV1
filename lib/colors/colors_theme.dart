import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // 🔵 Primary Brand Colors
  static const Color primary = Color.fromARGB(255, 0, 0, 0); // Azul brillante
  static const Color primaryDark = Color.fromARGB(
    255,
    0,
    110,
    255,
  ); // Azul oscuro
  static const Color primaryLight = Color.fromARGB(
    255,
    216,
    227,
    241,
  ); // Azul claro

  // ⚪ Neutrals (modo claro)
  static const Color backgroundLight = Color(0xFFF9F9F9);
  static const Color surfaceLight = Color(0xFFFFFFFF);
  static const Color textPrimaryLight = Color(0xFF1C1C1E);
  static const Color textSecondaryLight = Color(0xFF6E6E73);
  static const Color borderLight = Color(0xFFE5E5EA);

  // ⚫ Neutrals (modo oscuro)
  static const Color backgroundDark = Color(0xFF121212);
  static const Color surfaceDark = Color(0xFF1E1E1E);
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFFB0B0B0);
  static const Color borderDark = Color(0xFF2C2C2E);

  // 🟢 Success, ⚠️ Warning, 🔴 Error
  static const Color success = Color(0xFF34C759);
  static const Color warning = Color(0xFFFF9500);
  static const Color error = Color(0xFFFF3B30);

  // 🟣 Additional / Accent colors
  static const Color accentPurple = Color(0xFFAF52DE);
  static const Color accentGreen = Color(0xFF30D158);
  static const Color accentYellow = Color(0xFFFFD60A);
  static const Color accentPink = Color(0xFFFF375F);
  static const Color accentTeal = Color(0xFF64D2FF);

  // Buttons and Hover - Light Theme
  static const Color buttonBarLight = Color.fromARGB(255, 0, 0, 0);
  static const Color buttonBarHoverLight = Color(0xFF64D2FF);

  // Buttons and Hover - Dark Theme
  static const Color buttonBarDark = Color.fromARGB(255, 255, 255, 255);
  static const Color buttonBarHoverDark = Color.fromARGB(255, 48, 114, 255);

  // ♻️ Gradients
  static const Gradient blueGradient = LinearGradient(
    colors: [Color(0xFF0A84FF), Color(0xFF64D2FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient darkGradient = LinearGradient(
    colors: [Color(0xFF1E1E1E), Color(0xFF121212)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static var selectedNavItemDark;

  static var selectedNavItemLight;
}
