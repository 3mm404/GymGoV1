import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/bottom_nav.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gimnasio App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Arial'),
      home: NavBarButtons(),
    );
  }
}
