// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuldHeaderHomeScreen extends StatelessWidget {
  const BuldHeaderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hola, Fernanda", style: TextStyle()),
            Text(
              "¡Buen día!",
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
        const CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage("assets/avatar.png"),
          backgroundColor: Colors.grey,
        ),
      ],
    );
  }
}
