import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/custom_button.dart';

class ButtonSheet extends StatelessWidget {
  const ButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        color: Colors.teal,
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 30.0, left: 16, right: 16),
        child: Column(
          children: [
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hint: 'Note content',
              lines: 6,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              text: 'Save Note',
            ),
          ],
        ),
      ),
    );
  }
}
