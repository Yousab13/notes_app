import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_time_project/cubits/add_note_cubit/cubit/add_note_cubit_cubit.dart';
import 'package:note_time_project/models/note_model.dart';
import 'package:note_time_project/widgets/custom_button_widget.dart';
import 'package:note_time_project/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';
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
        padding:  EdgeInsets.only(right: 16.0 ,left:16
        ,bottom: MediaQuery.of(context).viewInsets.bottom
         ),
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
               const SizedBox(height:70,),
                BlocBuilder<AddNoteCubitCubit,AddNoteCubitState>(builder: (context,state)=>
                 CustomButton(
                  isloaded: state is AddNoteCubitLoading ?true :false,
                onTap: (){
                   if(formkey.currentState!.validate())
                   {
                    formkey.currentState!.save();
                     var noteCubit = BlocProvider.of<AddNoteCubitCubit>(context);
                     
                     noteCubit.addNote(NoteModel(title: title!,
                      subtitle: subtitle!, 
                      date: DateFormat('MMMM d, y').format(  DateTime.now())
                    , 
                      color: Colors.blue.value
                      ));
                   }
                   else{
                
                 autovalidateMode= AutovalidateMode.always;
                 setState(() {
                   
                 });
                   }
                },
               ),
                ),
               const SizedBox(height:32,),
              ],
            ),
      ),
    );
  }
}
