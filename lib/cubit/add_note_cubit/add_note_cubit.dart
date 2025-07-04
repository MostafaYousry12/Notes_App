import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color colors = const Color(0xffF7D1CD);

  addNote(NoteModel note) async {
    note.color = colors!.value;
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box<NoteModel>(kNotesBox);
      await notebox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errMsg: e.toString()));
    }
  }
}
