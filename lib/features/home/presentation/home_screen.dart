import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Home Screen',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          // Add more widgets here as needed
        ],
      ),
    );
  }
}
