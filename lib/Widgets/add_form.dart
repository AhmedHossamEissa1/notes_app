import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubets/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Widgets/Custom_button.dart';
import 'package:notes_app/Widgets/Custom_textField.dart';
import 'package:notes_app/Widgets/colors_list_view.dart';
import 'package:notes_app/constants.dart';

class AddForm extends StatefulWidget {
  AddForm({super.key, required GlobalKey<FormState> globalKey});

  @override
  State<AddForm> createState() => _EditFormState();
}

class _EditFormState extends State<AddForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final GlobalKey<FormState> formlKey = GlobalKey();

  String? title;
  String? description;
  

  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: autovalidateMode,
        key: formlKey,
        child: Column(
          children: [
           const SizedBox(height: 30),
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              text: 'Title',
              maxLines: 1,
            ),
          const  SizedBox(height: 24),
            CustomTextField(
              onSaved: (value) {
                description = value;
              },
              text: 'Content',
              maxLines: 6,
            ),
           const SizedBox(height: 16),
            ColorsListView(),
            CustomButton(
              onTab: () {
                if (formlKey.currentState!.validate()) {
                  formlKey.currentState!.save();

                  NoteModel note = NoteModel(
                      title: title!,
                      description: description!,
                      date:
                          '${DateTime.now().year.toString()}-${DateTime.now().month.toString()}-${DateTime.now().day.toString()}',
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              color: kPrimaryColor,
              text: 'Add',
            ),
           const SizedBox(height: 24),
          ],
        ));
  }
}
