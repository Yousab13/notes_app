import 'package:flutter/material.dart';
import 'package:note_time_project/constants.dart';

class CustomTextField extends StatelessWidget {
  final int maxlines ;
  final String hintline;
  const CustomTextField({super.key,  required this.maxlines, required this.hintline});
   OutlineInputBorder outLineBorder(Color color) {
    return OutlineInputBorder(
            borderSide: BorderSide(
              color: color
            ),
            borderRadius: BorderRadius.circular(10)
          );
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
          cursorColor: kPrimeryColor,
          maxLines: maxlines,
          decoration: InputDecoration(
            hintText: hintline,
            hintStyle: const TextStyle(color:kPrimeryColor),
            border:outLineBorder(Colors.white) ,
            enabledBorder: outLineBorder(Colors.white),
            focusedBorder:  outLineBorder(kPrimeryColor)
          ),
        );
  }
}