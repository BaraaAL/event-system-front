import 'package:book_an_event/viwe/createEvent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

//  int selectrdindex=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Icon(Icons.circle,size: 50,color: Colors.white70,),
        backgroundColor: Color(0xffb47b84),
      ),
      endDrawer: Drawer(),
backgroundColor: Color(0xffb47b84),
      body:
      Container(
        height: 810,width: 400,
        color:Color(0xffb47b84),
        child:
        ListView(//mainAxisAlignment: MainAxisAlignment.end,
        children:[
            SizedBox(height: 90,),
                Text("     Posts",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            SizedBox(height:20,),
            Container(margin: EdgeInsets.all(10),
              color: Colors.grey[300],height: 200,width: 360,),

            SizedBox(height: 1,),
            Container(margin: EdgeInsets.all(10),
              color: Colors.grey[300],height: 200,width: 360,),
            SizedBox(height: 1,),
            Container(margin: EdgeInsets.all(10),
              color: Colors.grey[300],height: 200,width: 360,),

            SizedBox(height: 1,),
            Container(margin: EdgeInsets.all(10),
              color: Colors.grey[300],height: 200,width: 360,),

            SizedBox(height: 1,),


           Container(margin: EdgeInsets.all(10),
              color: Colors.grey[300],height: 200,width: 360,),
            MaterialButton(onPressed: () {
              Get.to(createEvent());

            },


              child: Icon(Icons.add,size: 40,),
            )

          ]
          // MaterialButton(onPressed: () {
          //
          // },
          // child: Icon(Icons.circle,size: 70,color: Colors.white70,),)

        ,),

      ) );
  }
}
