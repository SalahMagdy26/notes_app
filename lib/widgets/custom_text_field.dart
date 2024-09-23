import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.lines = 1, required this.hint, required this.borderSide});
  final int? lines;
  final String hint;
  final BorderSide borderSide;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: lines,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),
        borderSide: borderSide,

        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white,),
          borderRadius: BorderRadius.all(Radius.circular(16))
        )


      ),
    );
  }
}
