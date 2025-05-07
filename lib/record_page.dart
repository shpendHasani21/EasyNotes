import 'package:flutter/material.dart';

class RecordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Record Your Note')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(Icons.mic, size: 60),
            SizedBox(height: 20),
            TextField(
              maxLines: 6,
              readOnly: true,
              decoration: InputDecoration(
                hintText: 'Speech will appear here...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Shpend Klinaku will do this
              },
              child: Text('Start Listening'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Shpend Hasani will do this
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

class record_page extends StatefulWidget {
  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<record_page> {
  TextEditingController _textController = TextEditingController();

  void startListening() {
    // Placeholder: This is for Shpend Klinaku to finish later
    setState(() {
      _textController.text = "Example voice to text result";
    });
  }

  void saveNote() {
    // Placeholder: Shpend Hasani will save this
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Note saved!")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Record Your Note")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(Icons.mic, size: 60, color: Colors.blue),
            SizedBox(height: 20),
            TextField(
              controller: _textController,
              maxLines: 6,
              readOnly: true,
              decoration: InputDecoration(
                hintText: "Speech will appear here...",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: startListening,
              child: Text("🎙️ Start Listening"),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: saveNote, child: Text("💾 Save")),
          ],
        ),
      ),
    );
  }
}
