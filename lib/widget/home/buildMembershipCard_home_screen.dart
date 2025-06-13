import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/home/components/membership_info.dart';
import 'package:flutter_application_1/widget/home/components/renew_membership_button.dart';

class BuildMembershipCardHomeScreen extends StatelessWidget {
  const BuildMembershipCardHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        //Color de la tarjeta de membresía
        color: Theme.of(context).brightness == Brightness.dark
            // color de la tarjeta en modo oscuro
            ? const Color.fromARGB(255, 0, 0, 0)
            // color de la tarjeta en modo claro
            : const Color.fromARGB(255, 0, 0, 0),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MembershipInfo(), // Información de la membresía
          SizedBox(height: 15),

          // Detalles de la membresía o informacion como fecha de inicio y fin
          SizedBox(height: 15),
          //Boton de renovar membresía
          RenewMembershipButton(),
        ],
      ),
    );
  }
}
