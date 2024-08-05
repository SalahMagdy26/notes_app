import 'package:flutter/material.dart';

import 'note_item.dart';

class NoteBuilder extends StatelessWidget {
  const NoteBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 13.0),
        child: NoteItem(),
      ),
      itemCount: 10,
    );
  }
}
