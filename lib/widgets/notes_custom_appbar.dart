import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class NotesCustomAppbar extends StatelessWidget {
  const NotesCustomAppbar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        CustomIcon(
          icon: icon,
        ),
      ],
    );
  }
}
