import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_time_project/cubits/cubit/note_cubit_cubit.dart';
import 'package:note_time_project/widgets/custom_appbar.dart';
import 'package:note_time_project/widgets/list_view_note_widget.dart';
class NoteWidget extends StatefulWidget {
  const NoteWidget({super.key});

  @override
  State<NoteWidget> createState() => _NoteWidgetState();
}

class _NoteWidgetState extends State<NoteWidget> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNote();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  const Padding(
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

