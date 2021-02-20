import 'package:flutter/material.dart';
import 'package:noteui/screens/notes/notes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App UI',
      home: NotesScreen(),
    );
  }
}


