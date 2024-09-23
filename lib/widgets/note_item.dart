import 'package:flutter/material.dart';
import 'package:note_app/views/note_edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffd4a373),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=> const NoteEditView()));
            },
            title: const Text(
              'Note\'s title',
              style: TextStyle(fontSize: 28, color: Colors.black,
              fontFamily: 'suse',
                fontWeight: FontWeight.w600
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13.0),
              child: Text(
                'Write your notes here to keep it in your head',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16,
                  fontFamily: 'suse'
                ),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_rounded,
                  color: Color(0xffd00000),
                  size: 30,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              'July,23,2024 ',
              style: TextStyle(color: Colors.black,
              fontFamily: 'suse'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
