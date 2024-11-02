import 'package:flutter/material.dart';
import 'package:notes_app/Models/note_model.dart';

class EditColorsListView extends StatefulWidget {
  final NoteModel note;
  EditColorsListView({super.key, required this.note});

  @override
  State<EditColorsListView> createState() => _EditColorsPageState();
}

class _EditColorsPageState extends State<EditColorsListView> {
  List<Color> colors = [
    Color(0xff9b5de5),
    Color(0xfff15bb5),
    Color(0xfffee440),
    Color(0xff00bbf9),
    Color(0xff00f5d4),
  ];
  bool? isChoosen;
  int? turn;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return turn == index
                ? Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundColor: colors[index],
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        turn = index;
                        widget.note.color = colors[index].value;

                        setState(() {});
                      },
                      child: CircleAvatar(
                        radius: 38,
                        backgroundColor: colors[index],
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
