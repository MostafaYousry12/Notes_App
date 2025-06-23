import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_note_list.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.notes});

  final NoteModel notes;
  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
  late int currentindex;

  @override
  void initState() {
    currentindex = kColors.indexOf(Color(widget.notes.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 38 * 2,
        child: ListView.builder(
            itemCount: kColors.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  currentindex = index;
                  widget.notes.color = kColors[index].value;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: ColorItem(
                    isActive: currentindex == index,
                    colors: kColors[index],
                  ),
                ),
              );
            }),
      ),
    );
    ;
  }
}
