import 'package:flutter/material.dart';
import 'package:note_time_project/widgets/custom_appbar.dart';
import 'package:note_time_project/widgets/list_view_note_widget.dart';
class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppbar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NoteListViewWidget())
        ],
      ),
    );
  }
}

