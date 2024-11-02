import 'package:flutter/material.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
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
