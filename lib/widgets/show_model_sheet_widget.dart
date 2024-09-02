import 'package:flutter/material.dart';
import 'package:note_time_project/widgets/custom_button_widget.dart';
import 'package:note_time_project/widgets/custom_text_field.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0 ),
          child: Column(
            children:[
              SizedBox(height: 16,),
              CustomTextField( maxlines: 1, hintline: 'Title'),
              SizedBox(height: 16,),
              CustomTextField(maxlines: 5, hintline: "Content"),
             SizedBox(height:70,),
             CustomButton(),
             SizedBox(height:32,),
            ],
          ),
    );
  }
}
