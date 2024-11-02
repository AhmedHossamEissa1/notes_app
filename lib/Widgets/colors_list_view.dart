import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubets/add_note_cubit/add_note_cubit.dart';

class ColorsListView extends StatefulWidget {
  ColorsListView({super.key});

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
  Color color = Color(0xfff15bb5);

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
            BlocProvider.of<AddNoteCubit>(context).color = color;
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

                        color = colors[index];
                        BlocProvider.of<AddNoteCubit>(context).color = color;

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
