import 'package:course/screens/home/class/Note.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../detail/detail_page.dart';

class NoteItem extends StatefulWidget {
  final String title;
  final String desc;
  final IconData icon;
  final double price;
  final int index;
  final Function f;
  const NoteItem({Key? key, required this.title, required this.desc, required this.icon,  required this.price, required this.index, required this.f}) : super(key: key);

  @override
  State<NoteItem> createState() => _NoteItemState();
}

class _NoteItemState extends State<NoteItem> {
  bool _isSelected = false;
  bool _isSelected1 = false;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //widget.f(Note(title: widget.title, desc: widget.desc, price: widget.price, icon: widget.icon));
        widget.f(widget.index);
        setState(() {
          _isSelected1 = !_isSelected1;
        });
      },
      onDoubleTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(title: widget.title, desc: widget.desc, icon: widget.icon)));

      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        margin: EdgeInsets.only(bottom: 10),
        //height: 200,
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.08),
            border: Border.all(color: _isSelected1 ? Colors.green.withOpacity(0.4) : Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 90,
              child: Text(widget.title,
                  style: TextStyle(color: Colors.black, fontSize: 25, fontFamily: 'ceraBold')),
            ),
            SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width - 90,
              child: Text(widget.desc,
                style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15,), textAlign: TextAlign.start,),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Icon(icon as IconData?),
                IconButton(
                  //splashColor: Colors.transparent,
                    //highlightColor: Colors.transparent,
                    onPressed: (){
                      setState(() {
                        _isSelected = !_isSelected;
                      });
                  }, icon: _isSelected ? Icon(FontAwesomeIcons.solidSquareCheck) : Icon(widget.icon)),
                //SizedBox(width: 5,),
                Container(
                  //margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 20,
                  child: VerticalDivider(width: 30, color: Colors.black,),
                ),
                Text("wireframe",
                  style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15,),),
                Spacer(),
                Text("2020/05/09",
                  style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15,),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
