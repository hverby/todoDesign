import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../home/class/Note.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/zofzeiufhe';
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Note args = ModalRoute.of(context)!.settings.arguments as Note;
    //final Object? args = ModalRoute.of(context)?.settings.arguments;

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
              child: Text(args.title,
                  style: TextStyle(color: Colors.black, fontSize: 25, fontFamily: 'ceraBold')),
            ),
            SizedBox(height: 10,),
            Container(
              child: Text(args.desc,
                style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15,), textAlign: TextAlign.start,),
            ),
            Icon(args.icon)
          ],
        ),
      )
    );
  }

}
