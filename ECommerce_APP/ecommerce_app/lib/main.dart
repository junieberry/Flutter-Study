import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //debug 그거 없애기
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, //배경 색 흰색으로
        fontFamily: "Muli",
        textTheme: TextTheme(
            bodyText1: TextStyle(color:kTextColor), //텍스트 색상설정
            bodyText2: TextStyle(color:kTextColor)),
        ),

      home:SplashScreen());
  }
}
