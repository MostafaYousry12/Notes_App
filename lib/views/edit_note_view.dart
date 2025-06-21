import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_edit_viewbody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesEditViewbody(),
    );
  }
}
