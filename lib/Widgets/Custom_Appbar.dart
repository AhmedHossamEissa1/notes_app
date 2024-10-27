import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_Search_Icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
