import 'package:course/screens/home/class/Note.dart';
import 'package:course/screens/home/widgets/note_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //HomePage({required this.noteList});
  final List<Note> note = [Note(title: "Ttitre1", desc: "desc1", icon: FontAwesomeIcons.squareCheck), Note(title: "Ttitre2", desc: "desc2", icon: FontAwesomeIcons.squareCheck), Note(title: "Ttitre3", desc: "desc3", icon: FontAwesomeIcons.squareCheck)];

  int _count = 0;
  int _currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Todo Page ($_count)", style: TextStyle(color: Colors.black, fontFamily: 'ceraBold'),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: ListView.builder(
          itemCount: this.note.length,
          itemBuilder: (context, i){
            return NoteItem(title: this.note[i].title, desc: this.note[i].desc, icon: this.note[i].icon, index: i, f: assignIndex, isSelected: i == _currentIndex,);
          },
        )
      ),
    );
  }

  void assignIndex(int i){
    setState(() {
      _currentIndex = i;
    });
    print(_currentIndex);
  }
}