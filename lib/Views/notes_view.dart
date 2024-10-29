import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_Appbar.dart';
import 'package:notes_app/Widgets/Custom_Bottom_Sheet.dart';
import 'package:notes_app/Widgets/Custom_listView.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Color(0xff26CFBC),
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return CustomBottomSheet();
                });
          },
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
            child: Column(
              children: [
                CustomAppbar(
                  text: 'Notes',
                  icon: Icons.search,
                ),
                CustomListview(),
              ],
            )));
  }
}
