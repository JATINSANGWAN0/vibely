import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'room.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Create Account")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: "Username"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool("is_registered", true);

                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const Room()));
              },
              child: const Text("Continue"),
            )
          ],
        ),
      ),
    );
  }
}