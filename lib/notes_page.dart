import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Dummy data for now
    List<String> notes = [
      "Buy milk and eggs",
      "Meeting with teacher at 2 PM",
      "Don't forget to walk the dog",
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Your Notes')),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(notes[index]));
        },
      ),
    );
  }
}

class notes_page extends StatelessWidget {
  final List<String> dummyNotes = [
    "Walk the dog at 5 PM",
    "Don't forget the project meeting tomorrow",
    "Call Grandma ❤️",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Notes")),
      body: ListView.builder(
        itemCount: dummyNotes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.note),
              title: Text(dummyNotes[index]),
            ),
          );
        },
      ),
    );
  }
}
