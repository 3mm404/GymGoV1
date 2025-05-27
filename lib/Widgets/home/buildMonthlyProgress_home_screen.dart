import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildmonthlyprogressHomeScreen extends StatelessWidget {
  const BuildmonthlyprogressHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tu progreso este mes',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey[200]!),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Asistencias',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '8 de 12',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF6C63FF),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              LinearProgressIndicator(
                value: 8 / 12,
                backgroundColor: Colors.grey[200],
                color: const Color(0xFF6C63FF),
                minHeight: 10,
                borderRadius: BorderRadius.circular(10),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildProgressStat(
                    'Calorías',
                    '2,450',
                    FontAwesomeIcons.fire,
                  ),
                  _buildProgressStat('Horas', '6.5', FontAwesomeIcons.clock),
                  _buildProgressStat(
                    'Rutinas',
                    '5',
                    FontAwesomeIcons.listCheck,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildProgressStat(String title, String value, IconData icon) {
  return Column(
    children: [
      FaIcon(icon, size: 20, color: const Color(0xFF6C63FF)),
      const SizedBox(height: 4),
      Text(
        value,
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      Text(
        title,
        style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey[600]),
      ),
    ],
  );
}
