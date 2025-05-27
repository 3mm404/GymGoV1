import 'package:flutter/material.dart';

class Settinguser extends StatelessWidget {
  const Settinguser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('User Settings Page', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                // Add your button action here
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
