import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_Appbar.dart';
import 'package:notes_app/Widgets/Custom_listView.dart';
import 'package:notes_app/Widgets/Custom_note_card.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
            child: Column(
              children: [
                CustomAppbar(),
                CustomListview(),
              ],
            )));
  }
}
