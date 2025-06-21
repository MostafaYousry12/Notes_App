import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_custom_appbar.dart';

class NotesEditViewbody extends StatelessWidget {
  const NotesEditViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          NotesCustomAppbar(
            title: 'Edit',
            icon: Icons.done,
          ),
        ],
      ),
    );
  }
}
