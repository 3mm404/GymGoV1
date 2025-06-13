import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MembershipStatus extends StatefulWidget {
  const MembershipStatus({super.key});

  @override
  State<MembershipStatus> createState() => _MembershipStatusState();
}

class _MembershipStatusState extends State<MembershipStatus> {
  bool isActive = true; // estado de la membresía

  void toggleStatus() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleStatus, // cambia el estado al tocar
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isActive
              ? const Color.fromARGB(255, 57, 255, 133) // verde para activa
              : const Color.fromARGB(255, 255, 91, 91), // rojo para inactiva
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          isActive ? 'Activa' : 'Inactiva',
          style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
        ),
      ),
    );
  }
}
