import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/services/user_information.dart';
import 'package:provider/provider.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    final userInformationService = Provider.of<UserInformationService>(context);
    
    return FutureBuilder<Map<String, dynamic>?>(
      future: userInformationService.getLocalUserProfile(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {
          print('❌ Error en FutureBuilder: ${snapshot.error}');
          return const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.red,
            child: Icon(Icons.error, color: Colors.white),
          );
        }

        if (snapshot.hasData && snapshot.data != null) {
          final fotoUrl = snapshot.data!['foto'];
          print('URL de foto: $fotoUrl');
          
          if (fotoUrl != null && fotoUrl.isNotEmpty) {
            return CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(fotoUrl),
              backgroundColor: Colors.transparent,
              onBackgroundImageError: (exception, stackTrace) {
                print('❌ Error cargando imagen: $exception');
                print('Stack trace: $stackTrace');
              },
            );
          } else {
            return const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.orange,
              child: Icon(Icons.warning, color: Colors.white),
            );
          }
        }

        // Si no hay datos, mostrar el avatar de prueba
        return CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          backgroundColor: Colors.transparent,
          onBackgroundImageError: (exception, stackTrace) {
            print('❌ Error con imagen de prueba: $exception');
            print('Stack trace: $stackTrace');
          },
        );
      },
    );
  }
}
