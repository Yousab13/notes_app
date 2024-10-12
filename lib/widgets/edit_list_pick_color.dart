import 'package:flutter/material.dart';
import 'package:note_time_project/constants.dart';
import 'package:note_time_project/models/note_model.dart';
import 'package:note_time_project/widgets/list_pick_color.dart';

class EditListPickColor extends StatefulWidget {
  final NoteModel note;
  const EditListPickColor({super.key, required this.note});

  @override
  State<EditListPickColor> createState() => _EditListPickColorState();
}

class _EditListPickColorState extends State<EditListPickColor> {
  late int currentIndex;
  @override
  void initState() {
    // my code 
    /*for (int i = 0; i < kcolors.length; i++) {
      if (widget.note.color == kcolors[i].value) {
        currentIndex = i;
      }
    }*/
    // Eng tharwat code ;
    currentIndex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentIndex = index;
            widget.note.color = kcolors[index].value;
            setState(() {});
          },
          child: ColorPickerItem(
            color: kcolors[index],
            isActive: currentIndex == index ? true : false,
          ),
        ),
        itemCount: kcolors.length,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
