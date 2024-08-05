import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class NoteEditView extends StatelessWidget {
  const NoteEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  const CustomAppBar(title: 'Edit note',icon: Icons.check,),
        actions: const [ SizedBox(width: 16,),],
      ),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 15,),
            CustomTextField(hint: 'Content', lines: 6,),
          ],
        ),
      ),
    );
  }
}
