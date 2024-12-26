import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/note_item.dart';

class NotesListItem extends StatelessWidget {
  const NotesListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: NoteItem(),
      );
    });
  }
}
