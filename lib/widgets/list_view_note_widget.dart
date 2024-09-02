import 'package:flutter/material.dart';
import 'package:note_time_project/widgets/note_item_widget.dart';

class NoteListViewWidget extends StatelessWidget {
  const NoteListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: NoteItemWidget(),
        ),
      ),
    );
  }
}
