import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_time_project/constants.dart';
import 'package:note_time_project/cubits/add_note_cubit/cubit/add_note_observar.dart';
import 'package:note_time_project/cubits/cubit/note_cubit_cubit.dart';
import 'package:note_time_project/models/note_model.dart';
import 'package:note_time_project/views/notes_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensures widgets are initialized
  await Hive.initFlutter();
  Hive.registerAdapter(
      NoteModelAdapter()); // Register adapter before opening the box
  await Hive.openBox<NoteModel>(kNoteBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}
