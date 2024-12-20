import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_Search_Icon.dart';

class CustomAppbar extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final IconData icon;
  const CustomAppbar({super.key, required this.text, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style:const TextStyle(
            fontSize: 28,
          ),
        ),
      const  Spacer(),
        CustomSearchIcon(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
