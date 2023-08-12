
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    required this.label,
    super.key,
  });

  final TextEditingController controller;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          label: label,
          border: InputBorder.none,
        ),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
