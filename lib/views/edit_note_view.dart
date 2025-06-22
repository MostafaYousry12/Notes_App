import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/notes_edit_viewbody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesEditViewbody(
        notes: notes,
      ),
    );
  }
}
