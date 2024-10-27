import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_Appbar.dart';
import 'package:notes_app/Widgets/Custom_button.dart';
import 'package:notes_app/Widgets/Custom_textField.dart';
import 'package:notes_app/constants.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
        child: Column(
          children: [
            CustomAppbar(
              text: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(height: 32),
            CustomTextField(
              text: 'Title',
              maxLines: 1,
            ),
            SizedBox(height: 24),
            CustomTextField(
              text: 'Content',
              maxLines: 6,
            ),
          ],
        ),
      ),
    );
  }
}
