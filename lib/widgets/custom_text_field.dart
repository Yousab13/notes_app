import 'package:flutter/material.dart';
import 'package:note_time_project/constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final int maxlines ;
  final String hintline;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  
 const  CustomTextField({super.key,  required this.maxlines, required this.hintline, this.onSaved ,this.onChanged});
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
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value){
          if(value!.isEmpty)
          {
          return 'this Field is Empty';
          }
          else{
            return null;
          }
      },
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