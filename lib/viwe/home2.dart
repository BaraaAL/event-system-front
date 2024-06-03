//import 'dart:ffi';
import 'package:book_an_event/viwe/loginScreen.dart';
import 'package:book_an_event/viwe/logupScreen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'createEvent.dart';
class home2 extends StatefulWidget {
  const home2({super.key});

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  List<Widget> listwidget =[
    Text("11111"),
    Text("222222")
  ];
  int selectrdindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (val){
            setState(() {
              selectrdindex = val;

            });
          },
          currentIndex: selectrdindex,
          selectedItemColor: Color(0xffb47b84),
          selectedFontSize: 20,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "home",
            ),
            BottomNavigationBarItem(icon: IconButton(icon:Icon(Icons.add),
              onPressed: () {Get.to(createEvent()) ;},)),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded),label: "mune"),

          ],),
        // (appBar: AppBar(bottom: ),
       body: Container(
         child: listwidget.elementAt(selectrdindex)
       )
    );
  }
}
