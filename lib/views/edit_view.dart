import 'package:flutter/material.dart';
import 'package:note_time_project/widgets/custom_appbar.dart';
import 'package:note_time_project/widgets/custom_text_field.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal:24 ),
        child: Column(
          children: [
            SizedBox(height:50 ,),
            CustomAppbar(icon: Icons.done, title: 'Edit Note'),
            SizedBox(height:50 ,),
            CustomTextField(maxlines: 1, hintline: 'Title'),
             SizedBox(height:16 ,),
            CustomTextField(maxlines: 5, hintline: 'Content'),
      
          ],
        ),
      ),
    );
  }
}