import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_note_card.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: CustomNoteCard(),
                      );
                    },
                  ),
                );
  }
}