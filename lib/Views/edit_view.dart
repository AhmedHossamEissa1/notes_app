import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_Appbar.dart';
import 'package:notes_app/Widgets/Custom_textField.dart';


class EditView extends StatefulWidget {
  EditView({super.key});

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
                 
                },
                text: 'Edit Note',
                icon: Icons.check,
              ),
              SizedBox(height: 32),
              CustomTextField(
                text: 'Title',
                maxLines: 1,
              ),
              SizedBox(height: 32),
              CustomTextField(
                text: 'Content',
                maxLines: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
