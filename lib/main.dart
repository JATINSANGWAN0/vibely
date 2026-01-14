import 'package:flutter/material.dart';
import 'splash.dart';

void main() {
  runApp(const VibelyApp());
}

class VibelyApp extends StatelessWidget {
  const VibelyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Splash(),
    );
  }
}