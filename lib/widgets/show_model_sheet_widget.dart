import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_time_project/constants.dart';

import 'package:note_time_project/cubits/add_note_cubit/cubit/add_note_cubit_cubit.dart';
import 'package:note_time_project/widgets/form_bottom_sheet.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AddNoteCubitCubit(),
      child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteCubitSuccess) {
           ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
       backgroundColor: Colors.black,
      content: Text(
        'The Note Added Successfully!',
        style: TextStyle(
          color: kPrimeryColor,
          fontSize: 13,
        ),
      ),
    ),);
         Future.delayed(const Duration(milliseconds: 500), 
  () {
    // ignore: use_build_context_synchronously
    Navigator.pop(context);
  });
          }
          if (state is AddNoteCubitFuiler) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
              ),
            );
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddNoteCubitLoading ? true : false,
              child: const SingleChildScrollView(child: NoteAppForm()));
        },
      ),
    );
  }
}
