import 'package:flutter/material.dart';

import 'Screens/homescreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xff293A4A),
        shadowColor:const  Color(0xffF8F9FD),
        focusColor: const Color(0xffF0C835),
        cardColor: const Color(0xffE5EAFD),
        canvasColor: Colors.grey[200],

        textTheme:const  TextTheme(
          headline1: TextStyle(color: Color(0xff293A4A),fontWeight: FontWeight.bold,fontSize: 17),
          headline2: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
          headline3: TextStyle(color:Color(0xff293A4A),fontSize: 15,fontWeight: FontWeight.bold),
          headline4: TextStyle(color:Color(0xff293A4A),fontSize: 12),
          headline5: TextStyle(color:Colors.white,fontSize: 12),
          headline6: TextStyle(color: Color(0xff8C939B),fontSize: 15,fontWeight: FontWeight.bold),

        )

      ),

      home: HomePage(),
    );
  }
}


