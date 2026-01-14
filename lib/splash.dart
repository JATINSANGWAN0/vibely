import 'dart:async';
import 'package:flutter/material.dart';
import 'create_account.dart';
import 'room.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () async {
      final prefs = await SharedPreferences.getInstance();
      bool registered = prefs.getBool("is_registered") ?? false;

      if (registered) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const Room()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const CreateAccount()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "VIBELY",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}