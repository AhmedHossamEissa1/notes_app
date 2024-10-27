import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return   IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.07)),
                    child: Center(
                      child: Icon(
                        Icons.search,
                        size: 36,
                      ),
                    ),
                  ));
  }
}