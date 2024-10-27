import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_textField.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              text: 'Title',
              maxLines: 1,
            ),
            SizedBox(
              height: 24,
            ),
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
