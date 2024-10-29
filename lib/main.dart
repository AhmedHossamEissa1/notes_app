import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/constants.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: NotesView(),
    );
  }
}
