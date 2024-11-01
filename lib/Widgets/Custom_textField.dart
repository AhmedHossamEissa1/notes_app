import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final int maxLines;
  final String text;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  const CustomTextField(
      {super.key, required this.text, required this.maxLines, this.onSaved, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        {
          if (value == '') {
            return 'Required field';
          } else {
            return null;
          }
        }
      },
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 24),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: text,
        labelStyle: TextStyle(color: kPrimaryColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: kPrimaryColor),
        ),
      ),
    );
  }
}
