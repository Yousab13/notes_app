import 'package:flutter/material.dart';

// ignore: must_be_immutable
class  CustomIconWiget extends StatelessWidget {
 CustomIconWiget({super.key, required this.icon ,this.onPressed});
final IconData icon;
void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withOpacity(0.1)
      ),
      child:  Center(
        child: IconButton(
        icon: Icon(icon,) ,
        onPressed: onPressed,),
      ),
    );
  }
}