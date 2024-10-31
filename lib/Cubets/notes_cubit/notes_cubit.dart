import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  getAllNotes() {
    
    // await Future.delayed(Duration(seconds: 1));
    var box = Hive.box<NoteModel>(kNoteBox);
    notes = box.values.toList();
  }
}
