import 'package:flutter/material.dart';

class GymZone extends StatelessWidget {
  const GymZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zona de Gimnasio'),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fitness_center, size: 100, color: Colors.blue[800]),
            const SizedBox(height: 20),
            const Text(
              'Bienvenido a la Zona de Gimnasio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para navegar a las clases o entrenamientos
                print('Gimnacios cerca de ti');
              },
              child: const Text('Ver Gimnasios Cercanos'),
            ),
          ],
        ),
      ),
    );
  }
}
