import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_button.dart';
import 'package:notes_app/Widgets/Custom_textField.dart';
import 'package:notes_app/constants.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12,
        right: 12,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16, // Adjust for keyboard
      ),
      child: ListView(
        shrinkWrap: true, // Prevents the list from taking all available space
        children: [
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
          SizedBox(height: 32),
          CustomButton(
            color: KprimaryColor,
            text: 'Add',
          ),
        ],
      ),
    );
  }
}
