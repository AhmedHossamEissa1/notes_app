import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Cubets/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/edit_view.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditView(note: note,);
        }));
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(note.color),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    note.title,
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  contentPadding: EdgeInsets.all(30),
                  horizontalTitleGap: 60,
                  iconColor: Colors.black,
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      note.description,
                      style: TextStyle(color: Colors.black.withOpacity(0.3)),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        note.delete();
                        BlocProvider.of<NotesCubit>(context).getAllNotes();
                        
                      },
                      icon: Icon(
                        FontAwesomeIcons.trash,
                        size: 24,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32, bottom: 20),
                  child: Text(
                    note.date,
                    style: TextStyle(color: Colors.black.withOpacity(0.3)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
