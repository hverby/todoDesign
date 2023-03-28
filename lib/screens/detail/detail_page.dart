import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String desc;
  const DetailPage({Key? key, required this.title, required this.desc}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(title,
                  style: TextStyle(color: Colors.black, fontSize: 25, fontFamily: 'ceraBold')),
            ),
            SizedBox(height: 10,),
            Container(
              child: Text(desc,
                style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15,), textAlign: TextAlign.start,),
            ),
          ],
        ),
      )
    );
  }
}
