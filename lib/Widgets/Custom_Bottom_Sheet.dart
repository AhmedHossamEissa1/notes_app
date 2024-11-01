import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Cubets/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Cubets/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Widgets/Custom_button.dart';
import 'package:notes_app/Widgets/Custom_textField.dart';
import 'package:notes_app/Widgets/add_form.dart';
import 'package:notes_app/constants.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  String? title;

  String? description;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 12,
          right: 12,
          bottom: MediaQuery.of(context).viewInsets.bottom +
              16, // Adjust for keyboard
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).getAllNotes();
            }
            if (state is AddNoteFail) {
              print('failed');
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize:
                      MainAxisSize.min, // Important for keeping the size
                  children: [
                    AddForm(globalKey: globalKey),
                    SizedBox(height: 20), // Add some spacing if needed
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
