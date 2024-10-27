import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_Search_Icon.dart';

class CustomAppbar extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomAppbar({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
