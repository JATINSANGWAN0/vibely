import 'package:flutter/material.dart';

class Room extends StatelessWidget {
  const Room({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Haryana Room")),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black,
              child: const Center(child: Text("Public Chat Area")),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey,
              child: const Center(child: Text("Avatar Area")),
            ),
          ),
        ],
      ),
    );
  }
}