import 'package:flutter/material.dart';

class MyQrScan extends StatelessWidget {
  const MyQrScan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi QR'),
        backgroundColor: Colors.blue[800],
      ),
    );
  }
}
