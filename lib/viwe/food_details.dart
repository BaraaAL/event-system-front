import 'package:flutter/material.dart';
class food_details extends StatefulWidget {
  const food_details({super.key});

  @override
  State<food_details> createState() => _food_detailsState();
}

class _food_detailsState extends State<food_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffb47b84),),
                 body: SingleChildScrollView(
                   child: Column(children: [
        Container(height: 150,color: Colors.grey,),
SizedBox(height: 60,),
        TextFormField(

          decoration: InputDecoration(

            fillColor: Color(0xfb47b84),
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xffe7e7),
              ),

            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe7e7))
            ),

            labelText: "Description :",


          ),
        ),
        SizedBox(height: 60,),
        Row(children: [
          Text("      cost for a person: ",style: TextStyle(color: Color(0xff944e63)),),
          Text("10")
        ],),
        SizedBox(height: 60,),
        Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: EdgeInsets.only(left: 60),
              padding: EdgeInsets.all(7),
              height: 50,width: 180,color: Color(0xfb47b84),
              child: Row(
                children: [
                    Text("Number of attendents "),
                    SizedBox(width: 1,),
                    Icon(Icons.person),
                ],
              ),
            ),
            SizedBox(width: 20,),
            Container(height: 50,width: 80,color: Color(0xfb47b84),
              child: TextFormField(
                keyboardType: TextInputType.number,
              ),)
          ],),
        Container(padding: EdgeInsets.all(10),
          width: 190,
          margin: EdgeInsets.only(left: 30,top: 130),
          child: MaterialButton(onPressed: () {


          },color: Color(0xffb47b84),child: Row(
            children: [
              Text("Make reservation "),
              SizedBox(width: 1,),

            ],

          ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        )

      ],),
                 ),
    );
  }
}
