import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/theme_controller.dart.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('toggles between light and dark mode', () {
    final controller = ThemeController();
    addTearDown(controller.dispose);

    expect(controller.value, ThemeMode.light);
    controller.toggleTheme();
    expect(controller.value, ThemeMode.dark);
    controller.toggleTheme();
    expect(controller.value, ThemeMode.light);
  });
}
