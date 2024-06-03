import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:book_an_event/viwe/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class logupScreen extends StatefulWidget {
  const logupScreen({super.key});

  @override
  State<logupScreen> createState() => _logupScreenState();
}

class _logupScreenState extends State<logupScreen> {

  Future logup(String name,String email,String pass,String confpass)async
  {
    try{
      print('122345');
      print(pass + '   ' + email+ '  '+ name+' '+confpass);
      var response = await http.post(
          Uri.parse('http://localhost:8000/api/login'),
          body: {
            'email': email,
            'password': pass,

          }
      );
      print('response: ${response.body}');
      print('response: ${response.statusCode}');
      if (response.statusCode == 200) {
        var js = jsonDecode(response.body);



       // String token = js['eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5YzI4NGFhMC0zZTJjLTRjOGUtYmRlNS0xYzk4YjdhZDVhNjAiLCJqdGkiOiIzYTU3MDllYmExNjYxMzk5NDg3Y2E4ZDgxMDYxMTQzOGUzZGMzYTgyYWI1YmM5ZDlkYzQxNWFhOGFiZDI0NWNlZDUyZTNkYjFjNzlkNDc1OSIsImlhdCI6MTcxNzA5NDM5OS4yMzc3MTUsIm5iZiI6MTcxNzA5NDM5OS4yMzc3MTksImV4cCI6MTc0ODYzMDM5OS4xOTk3OTUsInN1YiI6IjMwIiwic2NvcGVzIjpbXX0.B64WbNJuU47dYeDv2JMh8KWv_2GwxtkNFmjRKUq4fD9zKM8v5BEUivfyHPiaYA8OaeP8N2Za9INErBh43tC7L-DOk6g8J_MzL7XR8AUTOMNembWd2dUommUE9b-vueNP0wyKEAAmmLLCBF9AmdK7L6Lt7oavs9xxrN5Hu_-RGvGkKHi304UlGA5jtZG94-1rRjTdOLgAKXCxaxMlM175NZYhe5zm1qO2kO3vHhHl_53uPYg8WSNwKKkVUnUck_bHMtbTNuMyQuIEt5ayFfAbh0uzjQk37oYL7FfzW7ZUAPKKMcjbCQc_4hNh_Z72bC5xD3ux2WRzkaF1aoe5tw3m-o45pUR_7NUYmvUdh_cyETu7YGbbi3QtuHOmsatFBw1HUL-DqKt76zoYco1t93HCt191oIVChnLFh6bw1JYPoeXSl23CtrKqrf56PO9_kkvc8yQqyVDuKyTVxn2Qu7nMy0izbJBJuqb6rgyydYcyIX-apWCbef9l2PNmLEsIKQKZB10lwFhD1714lhP0nhJoqMA0Bz1C3WalKTn-mJSNLFYbAFLdrChvK7Gru0bROpVbCS7Nh3lapqcK56sY6Hq72PfmvDky0FrBUcWnhUZIbiPoO0Uig24sl0G1BCSooTeqQHB3SBbaR3SSrh4qHLxdw8T9jdt_82pdaVw0aRFnrNg"'];
       String token = js['token'];
        print("the token is $token");
      }
      else {
        print('sorrrry');
      }
    }catch(error){print(error);}


  }


  //controller.......................................
  bool repasswardVisibility = true;
  bool passwardVisibility = true;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(child:Column(

          children: [
            Container(height: 50,),

            Container(height: 100,width: 90,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xff944e63),
                    borderRadius: BorderRadius.circular(30)

                ),
                child: Image.asset("images/logoo.jpg",height: 90,width: 80,)),
//text................................
            SizedBox(height: 10,),
            Text("Welcome to Book an Event ",style: TextStyle(fontSize: 19,fontWeight:FontWeight.bold,color: Color(0xff944e63)),),
            SizedBox(height: 15,width: 10,),
            Row(
              children: [
                Container(width: 30,),
                Container(
                  child: Text("Sing up",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),
              ],
            ),
            //name....
            // SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  fillColor: Color(0xfb47b84),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffeef5ff),
                    ),




                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffeef5ff))
                  ),

                  labelText: "Name",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintText: "pleas enter",

                ),
              ),
            ),

            //email........
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  fillColor: Color(0xfb47b84),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffeef5ff),
                    ),




                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffeef5ff))
                  ),

                  labelText: "Email ",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintText: "pleas enter",

                ),
              ),
            ),
            //password
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  fillColor: Color(0xfb47b84),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffeef5ff),
                    ),




                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffeef5ff))
                  ),

                  labelText: "Password",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintText: "pleas enter",

                ),
              ),
            ),
            // confirm
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: confirmPasswordController,
                decoration: InputDecoration(
                  fillColor: Color(0xfb47b84),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black,
                    ),




                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffeef5ff))
                  ),

                  labelText: "Confirm Password",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintText: "pleas enter",

                ),
              ),
            ),



//bouttn sing up ...........................
            SizedBox(height: 20,),
            Container(width: 160,height:50 ,
              child: MaterialButton(onPressed: (){
                logup(nameController.text, emailController.text, passwordController.text, confirmPasswordController.text);
              //  Get.to(homePage());
              },


                color: Color(0xff944e63),
                child: Text("Sing up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),


              ),
            ),

          ],),

        ),
      ),
    );
  }
}
