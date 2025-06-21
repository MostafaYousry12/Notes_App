import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_card.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class NotesCustomAppbar extends StatelessWidget {
  const NotesCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        CustomIcon(),
      ],
    );
  }
}
