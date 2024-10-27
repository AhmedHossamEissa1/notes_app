import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.orange, borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  "Flutter Tips",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                contentPadding: EdgeInsets.all(30),
                horizontalTitleGap: 60,
                iconColor: Colors.black,
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    "Build your career with Ahmed Hossam",
                    style: TextStyle(color: Colors.black.withOpacity(0.3)),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.trash,
                      size: 24,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32, bottom: 20),
                child: Text(
                  "May 21,2022",
                  style: TextStyle(color: Colors.black.withOpacity(0.3)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
