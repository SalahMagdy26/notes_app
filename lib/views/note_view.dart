import 'package:flutter/material.dart';
import 'package:note_app/views/buttom_sheet_view.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/note_builder.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => const ButtonSheet());
        },
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            CustomAppBar(title: 'Notes',icon: Icons.search,),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: NoteBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
