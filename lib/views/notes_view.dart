import 'package:flutter/material.dart';
import 'package:note_time_project/widgets/note_app_widget.dart';
import 'package:note_time_project/widgets/show_model_sheet_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 1, 176, 135),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            builder: (context) => const NoteBottomSheet(),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NoteWidget(),
    );
  }
}
