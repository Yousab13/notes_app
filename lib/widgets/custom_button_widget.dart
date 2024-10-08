import 'package:flutter/material.dart';
import 'package:note_time_project/constants.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final bool isloaded ;
  const  CustomButton({super.key,  required this.onTap , this.isloaded =false} );
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration:BoxDecoration(
          color: kPrimeryColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child:Center(
          child:isloaded==true?const SizedBox(
            height: 20,
            width: 20,
            child:  CircularProgressIndicator(
                color:Colors.black ,
              ),
          ) :const Text('Add' ,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
    );
  }
}