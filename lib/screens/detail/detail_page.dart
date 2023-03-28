import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Detail Page", style: TextStyle(color: Colors.black, fontFamily: 'ceraBold'),),
        //iconTheme: IconThemeData(color: Colors.black, ),
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: IconButton(icon: FaIcon(FontAwesomeIcons.circleChevronLeft, color: Colors.black,),
              onPressed: (){
                Navigator.pop(context);
              },),
          )

      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: Column(
          children: [
            Container(
              child: Text("How to draw a professional wireframe ?",
                  style: TextStyle(color: Colors.black, fontSize: 25, fontFamily: 'ceraBold')),
            ),
            SizedBox(height: 10,),
            Container(
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15,), textAlign: TextAlign.start,),
            ),
          ],
        ),
      )
    );
  }
}
