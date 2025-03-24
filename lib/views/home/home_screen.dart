// File: views/home/home_screen.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GTHR Home')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text('Welcome to GTHR!'),
          SizedBox(height: 20),
          Text('Your matched gym buddies will show here (mock).'),
        ],
      ),
    );
  }
}
