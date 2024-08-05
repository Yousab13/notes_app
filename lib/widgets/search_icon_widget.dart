import 'package:flutter/material.dart';

class SearchIconWiget extends StatelessWidget {
  const SearchIconWiget({super.key});

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
        icon:const Icon(Icons.search,) ,
        onPressed: (){},),
      ),
    );
  }
}