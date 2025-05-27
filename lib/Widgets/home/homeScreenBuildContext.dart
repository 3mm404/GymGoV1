import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/home/buildHeader_home_screen.dart';
import 'package:flutter_application_1/Widgets/home/buildMembershipCard_home_screen.dart';
import 'package:flutter_application_1/Widgets/home/buildMonthlyProgress_home_screen.dart';
import 'package:flutter_application_1/Widgets/home/buildNextClassCard_home_screen.dart';
import 'package:flutter_application_1/Widgets/home/buildQuickAccessSection_home_screen.dart';

class Homescreenbuildcontext extends StatelessWidget {
  const Homescreenbuildcontext({super.key});
  // Este widget es el contexto principal de la pantalla de inicio
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        255,
        255,
        255,
      ), // Luego se puede hacer dinámico con Theme.of(context)
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BuldHeaderHomeScreen(), // Encabezado de la pantalla de inicio
                SizedBox(height: 25),
                BuildmembershipcardHomeScreen(), // Tarjeta de membresía
                SizedBox(height: 20),
                BuildnextclasscardHomeScreen(), // Tarjeta de próxima clase
                SizedBox(height: 30),
                BuildquickaccesssectionHomeScreen(), // Sección de acceso rápido
                SizedBox(height: 30),
                BuildmonthlyprogressHomeScreen(), // Progreso mensual
              ],
            ),
          ),
        ),
      ),
    );
  }
}
