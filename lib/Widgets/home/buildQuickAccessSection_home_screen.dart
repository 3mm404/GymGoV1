import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildquickaccesssectionHomeScreen extends StatelessWidget {
  const BuildquickaccesssectionHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Accesos rápidos',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 16),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          childAspectRatio: 0.8,
          children: [
            _quickAccessButton(FontAwesomeIcons.clock, 'Asistencia'),
            _quickAccessButton(FontAwesomeIcons.receipt, 'Pagos'),
            _quickAccessButton(FontAwesomeIcons.calendarCheck, 'Reservas'),
            _quickAccessButton(FontAwesomeIcons.mapLocationDot, 'Ubicación'),
            _quickAccessButton(FontAwesomeIcons.heartPulse, 'Salud'),
            _quickAccessButton(FontAwesomeIcons.trophy, 'Logros'),
            _quickAccessButton(FontAwesomeIcons.gear, 'Ajustes'),
            _quickAccessButton(FontAwesomeIcons.questionCircle, 'Ayuda'),
          ],
        ),
      ],
    );
  }
}

Widget _quickAccessButton(IconData icon, String label) {
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5FF),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: FaIcon(icon, color: const Color(0xFF6C63FF), size: 24),
        ),
      ),
      const SizedBox(height: 8),
      Text(
        label,
        style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey[700]),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
