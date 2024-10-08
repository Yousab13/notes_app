import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_time_project/constants.dart';

import 'package:note_time_project/models/note_model.dart';

part 'note_cubit_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
 List<NoteModel>? notes ;
  fetchAllNote() {
      var boxNote = Hive.box<NoteModel>(kNoteBox);
      notes =boxNote.values.toList();
  }
}
