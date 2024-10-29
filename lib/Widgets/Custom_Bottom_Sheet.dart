import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_button.dart';
import 'package:notes_app/Widgets/Custom_textField.dart';
import 'package:notes_app/Widgets/add_form.dart';
import 'package:notes_app/constants.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  String? title;

  String? description;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12,
        right: 12,
        bottom: MediaQuery.of(context).viewInsets.bottom +
            16, // Adjust for keyboard
      ),
      child: ListView(
        shrinkWrap: true, // Prevents the list from taking all available space
        children: [
          SizedBox(height: 32),
          AddForm(),
          
        ],
      ),
    );
  }
}
