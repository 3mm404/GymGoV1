import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RenewMembershipButton extends StatefulWidget {
  const RenewMembershipButton({super.key});

  @override
  State<RenewMembershipButton> createState() => _RenewMembershipButtonState();
}

class _RenewMembershipButtonState extends State<RenewMembershipButton> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // lógica para renovar membresía
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isDark
              ? const Color.fromARGB(255, 255, 255, 255)
              : const Color.fromARGB(255, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
        child: Text(
          'Renovar membresía',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
