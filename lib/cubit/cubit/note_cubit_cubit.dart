import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'note_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());

  List<NoteModel>? notes;
  FetchCubitNote() {
    var notebox = Hive.box<NoteModel>(kNotesBox);
    notes = notebox.values.toList();
    emit(NoteCubitSuccess());
  }
}
