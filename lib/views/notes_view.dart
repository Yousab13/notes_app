import 'package:flutter/material.dart';
import 'package:note_time_project/widgets/note_app_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoteWidget(),
    );
  }
}
