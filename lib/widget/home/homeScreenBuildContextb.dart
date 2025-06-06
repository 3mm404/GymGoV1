import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/home/buildHeader_home_screen.dart'
    show BuldHeaderHomeScreen;

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
