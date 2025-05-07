import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(EasyNotesApp());
}

class EasyNotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyNotes',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}


Future<void> mai() async => runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
