import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubets/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Widgets/Custom_Appbar.dart';
import 'package:notes_app/Widgets/Custom_textField.dart';
import 'package:notes_app/Widgets/colors_list_view.dart';
import 'package:notes_app/Widgets/edit_colors_list_view.dart';

class EditView extends StatefulWidget {
  final NoteModel note;
  EditView({super.key, required this.note});

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  String? title;
  String? description;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final GlobalKey<FormState> formlKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
        child: Form(
          autovalidateMode: autovalidateMode,
          key: formlKey,
          child: Column(
            children: [
              CustomAppbar(
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.description =
                      description ?? widget.note.description;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).getAllNotes();
                  Navigator.pop(context);
                },
                text: 'Edit Note',
                icon: Icons.check,
              ),
              SizedBox(height: 32),
              CustomTextField(
                onChanged: (value) {
                  title = value;
                },
                text: 'Title',
                maxLines: 1,
              ),
              SizedBox(height: 32),
              CustomTextField(
                onChanged: (value) {
                  description = value;
                },
                text: 'Content',
                maxLines: 5,
              ),
              SizedBox(
                height: 20,
              ),
              EditColorsListView(note: widget.note,),
            ],
          ),
        ),
      ),
    );
  }
}
