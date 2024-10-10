import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  List<Color> colors = const[
    Color(0xffD9FFF8),
    Color(0xff9BB291),
    Color(0xffEEE1F0),
    Color(0xff8ecae6),
    Color(0xffffb703),
    Color(0xfffb8500),
    Color(0xffc1121f),
    Color(0xff03045e),
    Color(0xff62b6cb),
  ];
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
              BlocProvider.of<AddNoteCubitCubit>(context).color =colors[index];
              setState((){});
            } ,
            child: ColorPickerItem(color:colors[index],
            isActive: currentIndex==index ?true :false,
            ),
          ),
          itemCount:colors.length,
          separatorBuilder: (context,index)=> const SizedBox(width: 10 ,),
        ),
    );
  }
}