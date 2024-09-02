import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_time_project/views/edit_view.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget
  ({super.key});

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
          color: Colors.yellow,
        borderRadius: BorderRadius.circular(10)
        ),
        child:  Column(
          children: [
            ListTile(
              title:const Padding(
                padding:  EdgeInsets.only(top: 24),
                child: Text(
                  'Flutter Tips' ,style: TextStyle(
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
                  'Welcome to build your career in flutter' ,style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 16,
                  
                  ) ,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  ),
                )
                ,
                trailing: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.trash) ,
                color:Colors.black
              ),
                ) ,
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
                  padding:const EdgeInsets.only(bottom: 10),
                  child:  Text('13 may 2024',
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

