import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/text_field_theme.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
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
            Text("Hola, Fernanda", style: TextStyleTheme.textTitle),
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
