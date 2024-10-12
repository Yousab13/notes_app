import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_time_project/cubits/note_cubit/cubit/note_cubit_cubit.dart';
import 'package:note_time_project/models/note_model.dart';
import 'package:note_time_project/widgets/note_item_widget.dart';

class NoteListViewWidget extends StatelessWidget {
  const NoteListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
       List<NoteModel>notes=  BlocProvider.of<NoteCubit>(context).notes??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: NoteItemWidget(note: notes[index],),
            ),
            itemCount:notes.length,
          ),
  
        );
      },
    );
  }
}
