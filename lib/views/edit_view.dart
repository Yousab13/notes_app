import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_time_project/cubits/cubit/note_cubit_cubit.dart';
import 'package:note_time_project/models/note_model.dart';
import 'package:note_time_project/widgets/custom_appbar.dart';
import 'package:note_time_project/widgets/custom_text_field.dart';

class EditView extends StatefulWidget {
  final NoteModel note;
  const EditView({super.key, required this.note});

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  String ?title ,subtitle ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Padding(
        padding:  const EdgeInsets.symmetric(horizontal:24 ),
        child: Column(
          children: [
            const SizedBox(height:50 ,),
            CustomAppbar(icon: Icons.done, title: 'Edit Note', onPressed: (){
              widget.note.title =title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NoteCubit>(context).fetchAllNote();
            },),
            const SizedBox(height:50 ,),
             CustomTextField(maxlines: 1, hintline: widget.note.title ,onChanged:(value){
             title =value;
             } ,),
             const SizedBox(height:16 ,),
             CustomTextField(maxlines: 5, hintline: widget.note.subtitle,onChanged:(value){
              subtitle=value;
             }),
      
          ],
        ),
      ),
    );
  }
}