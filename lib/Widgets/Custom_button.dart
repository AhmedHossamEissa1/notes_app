import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.color, required this.text, this.onTab,  this.isLoading=false});
  final bool isLoading;
  final Color color;
  final String text;
  final void Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: double.infinity,
        height: 50,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),
          ),
        ),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      ),
    );
  }
}
