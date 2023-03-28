import 'package:course/screens/home/widgets/note_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget{
  final List<String> titleList = ["How to draw a professional wireframe ?", "How to draw a professional template ?", "How to draw a professional webpage ?"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Todo Page", style: TextStyle(color: Colors.black, fontFamily: 'ceraBold'),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: ListView.builder(
          itemCount: this.titleList.length,
          itemBuilder: (context, i){
            return NoteItem(title: this.titleList[i],);
          },
        )

      ),
    );
  }
}