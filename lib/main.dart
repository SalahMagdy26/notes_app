import 'package:flutter/material.dart';

import 'views/note_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black),
      home: const NotesView(),
    );
  }
}
