import 'package:flutter/material.dart';
import 'package:note_time_project/widgets/custom_button_widget.dart';
import 'package:note_time_project/widgets/custom_text_field.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const NoteAppForm();
  }
}

class NoteAppForm extends StatefulWidget {
  const NoteAppForm({
    super.key,
  });

  @override
  State<NoteAppForm> createState() => _NoteAppFormState();
}

class _NoteAppFormState extends State<NoteAppForm> {
  final GlobalKey<FormState>formkey =GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String ?title ,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0 ),
            child: Column(
              children:[
                const SizedBox(height: 16,),
                CustomTextField( maxlines: 1, hintline: 'Title'
                ,onSaved: (value){
                 title=value;
                },
                
                ),
                const SizedBox(height: 16,),
                 CustomTextField(maxlines: 5, hintline: "Content",
                onSaved: (value)
                {
                 subtitle =value;
                },),
               const SizedBox(height:50,),
               CustomButton(
                onTap: (){
                   if(formkey.currentState!.validate())
                   {
                    formkey.currentState!.save();
                   }
                   else{
                
                 autovalidateMode= AutovalidateMode.always;
                 setState(() {
                   
                 });
                   }
                },
               ),
               const SizedBox(height:32,),
              ],
            ),
      ),
    );
  }
}
