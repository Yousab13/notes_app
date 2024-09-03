import 'package:flutter/material.dart';
import 'package:note_time_project/widgets/search_icon_widget.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key, required this.icon, required this.title,
  });
final IconData icon;
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
         title,
          style:const TextStyle(fontSize: 28, color: Colors.white),
        ),
        const Spacer(),
        CustomIconWiget(icon: icon,),
      ],
    );
  }
}
