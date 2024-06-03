
import 'package:book_an_event/viwe/firstPage.dart';
import 'package:book_an_event/viwe/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  State<MyApp> createState() => _MyAppState();

}
class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
          primaryColor: Color(0xffb47b84),
      backgroundColor: Color(0xffb47b84),
      //  appBarTheme: AppBarTheme(color: Color(0xffb47b84))
      ) ,
      home:const firstPage(),
      routes: {
        'firstPage': (context) => const firstPage(),
        'loginscrren': (context) => const loginScreen(),
      }



    );}}
