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
  final List<Note> note = [Note(title: "Ttitre1", desc: "desc1", icon: FontAwesomeIcons.squareCheck, price: 500),
    Note(title: "Ttitre2", desc: "desc2", icon: FontAwesomeIcons.squareCheck, price: 700),
    Note(title: "Ttitre3", desc: "desc3", icon: FontAwesomeIcons.squareCheck, price: 100)];

  List<int> _noteList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Todo Page (${_noteList.length}) = ${getPrice().toInt()}", style: TextStyle(color: Colors.black, fontFamily: 'ceraBold'),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: ListView.builder(
          itemCount: this.note.length,
          itemBuilder: (context, i){
            return NoteItem(title: this.note[i].title, desc: this.note[i].desc, icon: this.note[i].icon, index: i, f: addNote, price: this.note[i].price,);
          },
        )
      ),
    );
  }

  void addNote(int i){
    setState(() {
      if(_noteList.contains(i)){
        _noteList.remove(i);
      }else{
        _noteList.add(i);
      }
      getPrice();
    });
  }
  double getPrice(){
    double sum = 0;
    for(var i in _noteList){
      sum += note[i].price;
    }
    return sum;
  }
}