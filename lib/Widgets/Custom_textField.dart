import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final int maxLines;
  final String text;

  const CustomTextField(
      {super.key, required this.text, required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextField(
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
          borderSide: BorderSide(color: const Color.fromARGB(255, 26, 68, 58)),
        ),
      ),
    );
  }
}
