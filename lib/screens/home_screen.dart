import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/home/buildHeader_home_screen.dart';
import 'package:flutter_application_1/widget/home/buildMembershipCard_home_screen.dart';

class Homescreenbuildcontext extends StatelessWidget {
  const Homescreenbuildcontext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildHeaderHomeScreen(), // Encabezado de la pantalla de inicio
                const SizedBox(height: 25),
                BuildMembershipCardHomeScreen(), // Tarjeta de membresía
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
