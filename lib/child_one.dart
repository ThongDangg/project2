import 'package:flutter/material.dart';

class ChildOne extends StatelessWidget {
  const ChildOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Welcome to Hello Flutter App",
      style: TextStyle(
        fontFamily: "Creepster",
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
