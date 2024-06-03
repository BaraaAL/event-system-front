import 'package:flutter/material.dart';
class accessories_details extends StatefulWidget {
  const accessories_details({super.key});

  @override
  State<accessories_details> createState() => _food_detailsState();
}

class _food_detailsState extends State<accessories_details> {
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
            Text("   cost: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffb47b84)),),
            Text("37.98")
          ],),
          SizedBox(height: 60,),

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
