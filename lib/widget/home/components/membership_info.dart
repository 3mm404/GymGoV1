import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/home/components/membership_status.dart';
import 'package:google_fonts/google_fonts.dart';

class MembershipInfo extends StatelessWidget {
  const MembershipInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark
        ? const Color.fromARGB(255, 255, 255, 255)
        : const Color.fromARGB(255, 255, 255, 255);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Título y estado
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Membresía Premium',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            MembershipStatus(),
          ],
        ),
        const SizedBox(height: 10),
        // Detalles de la membresía
        Row(
          children: [
            _buildMembershipDetail(
              context,
              Icons.calendar_today,
              'Válida hasta',
              '15/11/2023',
            ),
            const SizedBox(width: 20),
            _buildMembershipDetail(
              context,
              Icons.payment,
              'Próximo pago',
              '\$599.00',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMembershipDetail(
    BuildContext context,
    IconData icon,
    String label,
    String value,
  ) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark
        ? const Color.fromARGB(255, 255, 255, 255)
        : const Color.fromARGB(255, 255, 255, 255);

    return Row(
      children: [
        Icon(icon, color: textColor, size: 20),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: textColor.withOpacity(0.7),
              ),
            ),
            Text(
              value,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
