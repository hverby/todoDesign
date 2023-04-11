import 'package:course/screens/cart/cartPage.dart';
import 'package:course/screens/detail/detail_page.dart';
import 'package:course/screens/home/class/Note.dart';
import 'package:course/screens/home/home_page.dart';
import 'package:course/screens/home/widgets/note_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',

      routes: {
        '/': (context) => HomePage(),
        DetailPage.routeName: (context) => DetailPage(),
        CartPage.routeName: (context) => CartPage(),
      },
      theme: ThemeData(
        fontFamily: 'ceraRegular',
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
    );
  }

  ThemeData chooseTheme(bool b){
    if(b){
      return ThemeData(
        fontFamily: 'ceraRegular',
        primarySwatch: Colors.blue,
      );
    }else{
      return ThemeData(
        fontFamily: 'ceraRegular',
        primarySwatch: Colors.blue,
      );
    }
  }
}