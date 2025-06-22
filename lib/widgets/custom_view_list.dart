import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/cubit/note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_card.dart';

class CustomViewList extends StatelessWidget {
  const CustomViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubitCubit, NoteCubitState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubitCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: CustomCard(
                    notes: notes[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
