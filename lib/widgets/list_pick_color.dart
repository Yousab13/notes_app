import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_time_project/constants.dart';
import 'package:note_time_project/cubits/add_note_cubit/cubit/add_note_cubit_cubit.dart';
// ignore: must_be_immutable
class ColorPickerItem extends StatelessWidget {

 final  Color color;
 final bool isActive ;
  const  ColorPickerItem({super.key, required this.color, required this.isActive});
  @override
  Widget build(BuildContext context) {
    return isActive==true? CircleAvatar(
      backgroundColor:Colors.white,
      radius: 45,
      child: CircleAvatar(
      backgroundColor:color,
      radius: 38,
    ),
    ): CircleAvatar(
      backgroundColor:color,
      radius: 38,
    );
  }
}
class ListPickColor extends StatefulWidget {
 const ListPickColor({super.key});

  @override
  State<ListPickColor> createState() => _ListPickColorState();
}

class _ListPickColorState extends State<ListPickColor> {
  
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context ,index)=> GestureDetector(
            onTap:(){
              currentIndex=index;
              BlocProvider.of<AddNoteCubitCubit>(context).color =kcolors[index];
              setState((){});
            } ,
            child: ColorPickerItem(color:kcolors[index],
            isActive: currentIndex==index ?true :false,
            ),
          ),
          itemCount:kcolors.length,
          separatorBuilder: (context,index)=> const SizedBox(width: 10 ,),
        ),
    );
  }
}