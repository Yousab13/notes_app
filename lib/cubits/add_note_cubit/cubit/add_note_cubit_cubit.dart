import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:note_time_project/constants.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addNote(note) async {
    emit(AddNoteCubitLoading());
    try {
      var boxNote = Hive.box(kNoteBox);
      boxNote.add(note);
      emit(AddNoteCubitSuccess());
    } catch (e) {
      emit(AddNoteCubitFuiler(errorMessage: e.toString()));
    }
  }
}
