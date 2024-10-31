part of 'notes_cubit_cubit.dart';

@immutable
abstract class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitSuccess extends NotesCubitState {}

final class NotesCubitFail extends NotesCubitState {
  final String error;

  NotesCubitFail(this.error);
}