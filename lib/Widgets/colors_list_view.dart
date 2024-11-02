import 'package:flutter/material.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
