import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.lines = 1, required this.hint});
  final int? lines;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: lines,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
