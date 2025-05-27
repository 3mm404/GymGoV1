import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/home/buildHeader_home_screen.dart';
import 'package:flutter_application_1/Widgets/home/buildMembershipCard_home_screen.dart';
import 'package:flutter_application_1/Widgets/home/buildMonthlyProgress_home_screen.dart';
import 'package:flutter_application_1/Widgets/home/buildNextClassCard_home_screen.dart';
import 'package:flutter_application_1/Widgets/home/buildQuickAccessSection_home_screen.dart';
import 'package:flutter_application_1/Widgets/home/homeScreenBuildContext.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  // Método principal que construye la pantalla
  Widget build(BuildContext context) {
    return Homescreenbuildcontext();
  }

  // Métodos para construir cada sección de la pantalla

  Widget buildHeader() {
    return const BuldHeaderHomeScreen();
  }

  Widget buildMembershipCard() {
    return const BuildmembershipcardHomeScreen();
  }

  Widget buildNextClassCard() {
    return const BuildnextclasscardHomeScreen();
  }

  Widget buildQuickAccessSection() {
    return const BuildquickaccesssectionHomeScreen();
  }

  Widget buildMonthlyProgress() {
    return const BuildmonthlyprogressHomeScreen();
  }
}
