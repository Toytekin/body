import 'package:flutter/material.dart';

class SifreTextFild extends StatelessWidget {
  TextEditingController controller;
  String label;
  SifreTextFild({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: true,
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
