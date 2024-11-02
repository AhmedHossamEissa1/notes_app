import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubets/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Widgets/Custom_Appbar.dart';
import 'package:notes_app/Widgets/Custom_Bottom_Sheet.dart';
import 'package:notes_app/Widgets/Custom_listView.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).getAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          shape:const CircleBorder(),
          backgroundColor: Color(0xff26CFBC),
          child:const Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const CustomBottomSheet();
                });
          },
        ),
        body:const Padding(
            padding:  EdgeInsets.only(top: 30, left: 16, right: 16),
            child: Column(
              children: [
                CustomAppbar(
                  text: 'Notes',
                  icon: Icons.search,
                ),
                CustomListview(),
              ],
            )));
  }
}
