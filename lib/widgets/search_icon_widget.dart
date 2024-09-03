import 'package:flutter/material.dart';

class  CustomIconWiget extends StatelessWidget {
  const CustomIconWiget({super.key, required this.icon});
final IconData icon;
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
        onPressed: (){},),
      ),
    );
  }
}