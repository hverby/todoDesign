import 'package:course/screens/home/class/Note.dart';
import 'package:course/screens/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  List<Note> note = [Note(title: "Ttitre1", desc: "desc1"), Note(title: "Ttitre2", desc: "desc2"), Note(title: "Ttitre3", desc: "desc3")];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'ceraRegular',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(noteList: note,),
    );
  }
}