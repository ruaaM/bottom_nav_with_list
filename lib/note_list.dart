import 'package:bottom_nav_with_list/models/note.dart';
import 'package:bottom_nav_with_list/note_item.dart';
import 'package:flutter/cupertino.dart';

Widget buildNotesListView(List<NoteModel> notes) {
  if (notes.isEmpty) {
    return const Center(child: Text('Empty!'));
  }
  return ListView.builder(
    itemBuilder: (_context, index) => noteItemView(
      notes[index],
    ),
    itemCount: notes.length,
  );
}
