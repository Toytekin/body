import 'package:flutter/material.dart';

class MailTextFild extends StatelessWidget {
  TextEditingController controller;
  String label;
  MailTextFild({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          border: const OutlineInputBorder(borderSide: BorderSide()),
        ),
      ),
    );
  }
}
