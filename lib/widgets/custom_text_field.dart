import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.lines = 1, required this.hint, required this.borderSide, this.onSaved});
  final int? lines;
  final String hint;
  final BorderSide borderSide;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }else {
          return null;
        }
      },
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
