import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/cubit/note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_color_list_view.dart';
import 'package:notes_app/widgets/notes_custom_appbar.dart';

class NotesEditViewbody extends StatefulWidget {
  const NotesEditViewbody({super.key, required this.notes});
  final NoteModel notes;
  @override
  State<NotesEditViewbody> createState() => _NotesEditViewbodyState();
}

class _NotesEditViewbodyState extends State<NotesEditViewbody> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          NotesCustomAppbar(
            onPressed: () {
              widget.notes.title = title ?? widget.notes.title;
              widget.notes.subTitle = subtitle ?? widget.notes.subTitle;
              widget.notes.save();
              BlocProvider.of<NoteCubitCubit>(context).FetchCubitNote();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.done,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onChange: (value) {
              title = value;
            },
            hint: widget.notes.title,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onChange: (value) {
              subtitle = value;
            },
            hint: widget.notes.subTitle,
            maxLines: 5,
          ),
          EditColorListView(
            notes: widget.notes,
          )
        ],
      ),
    );
  }
}
