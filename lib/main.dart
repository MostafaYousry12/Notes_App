import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:notes_app/constants.dart";
import "package:notes_app/cubit/add_note_cubit/add_note_cubit.dart";
import "package:notes_app/cubit/cubit/note_cubit_cubit.dart";
import "package:notes_app/models/note_model.dart";
import "package:notes_app/simple_bloc_observer.dart";
import "package:notes_app/views/notes_view.dart";

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubitCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(0xff2a2a2a),
          fontFamily: "Poppins",
        ),
        home: const NotesView(),
      ),
    );
  }
}
