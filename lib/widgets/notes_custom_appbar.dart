import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class NotesCustomAppbar extends StatelessWidget {
  const NotesCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        CustomIcon(),
      ]),
    );
  }
}
