import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/constants.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  getAllNotes() async {
  
    try {
      // await Future.delayed(Duration(seconds: 1));
      var box = Hive.box<NoteModel>(kNoteBox);
      box.values.toList();
      emit(NotesCubitSuccess());
    } catch (e) {
      emit(NotesCubitFail('errorMessage: ${e.toString()}'));
    }
  }
}
