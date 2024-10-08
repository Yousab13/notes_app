import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_time_project/models/note_model.dart';
import 'package:note_time_project/views/edit_view.dart';

class NoteItemWidget extends StatelessWidget {
  final NoteModel note ;

  const NoteItemWidget({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, 
          MaterialPageRoute(builder: (context)=>const EditView())
        );
      },
      child: Container(
        padding:const EdgeInsets.only( left: 16),
        decoration:  BoxDecoration(
          color: Color( Colors.blue.value),

        borderRadius: BorderRadius.circular(10)
        ),
        child:  Column(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text(
                  note.title ,style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ) ,
                  
                  ),
              ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16 ,
                  bottom:16
                  ),
                  child: Text(
                  note.subtitle,style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 16,
                  
                  ) ,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  ),
                )
                ,
                trailing: IconButton(onPressed: (){
                  note.delete();
                }, icon: const Icon(FontAwesomeIcons.trash) ,
                color:Colors.black
              ),
                ) ,
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
                  padding:const EdgeInsets.only(bottom: 10),
                  child:  Text(note.date,
                  style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 16,
                ) ,
                  ),
                  
                  )
          ],
        ),
      
      ),
    );
  }
}

