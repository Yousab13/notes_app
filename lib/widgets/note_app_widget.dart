import 'package:flutter/material.dart';
import 'package:note_time_project/widgets/list_view_note_widget.dart';
import 'package:note_time_project/widgets/search_icon_widget.dart';

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
          Row(
            children: [
              Text(
                'Notes',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              Spacer(),
              SearchIconWiget(),
            ],
          ),
          Expanded(child: NoteListViewWidget())
        ],
      ),
    );
  }
}
