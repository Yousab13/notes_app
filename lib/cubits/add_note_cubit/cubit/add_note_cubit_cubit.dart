import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ignore: depend_on_referenced_packages

import 'package:note_time_project/constants.dart';
import 'package:note_time_project/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  Color color =Colors.red;
  addNote(NoteModel note) async {
    note.color =color.value;
    emit(AddNoteCubitLoading());
    try {
      var boxNote = Hive.box<NoteModel>(kNoteBox);
      boxNote.add(note);
      emit(AddNoteCubitSuccess());
    } catch (e) {
      emit(AddNoteCubitFuiler(errorMessage: e.toString()));
    }
  }
}