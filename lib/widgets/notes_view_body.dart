import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/cubit/note_cubit_cubit.dart';
import 'package:notes_app/widgets/custom_view_list.dart';
import 'package:notes_app/widgets/notes_custom_appbar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NoteCubitCubit>(context).FetchCubitNote();
    super.initState();
  }

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
            title: "Notes",
            icon: Icons.search,
          ),
          Expanded(child: CustomViewList())
        ],
      ),
    );
  }
}
