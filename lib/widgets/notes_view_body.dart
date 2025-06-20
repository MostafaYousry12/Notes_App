import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_card.dart';
import 'package:notes_app/widgets/notes_custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          NotesCustomAppbar(),
          CustomCard(),
        ],
      ),
    );
  }
}
