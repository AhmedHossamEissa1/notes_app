import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var box = Hive.box<NoteModel>(kNoteBox);
      await box.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFail('errorMessage: ${e.toString()}'));
    }
  }
}
