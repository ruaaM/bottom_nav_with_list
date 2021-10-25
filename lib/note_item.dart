import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'models/note.dart';

Widget noteItemView(NoteModel note) {
  return Card(
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Text(
                note.content,
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    ),
  );
}
