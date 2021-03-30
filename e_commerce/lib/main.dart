import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        textTheme: TextTheme(
          bodyText1: TextStyle(color:kTextColor),
          bodyText2: TextStyle(color:kTextColor)
          ),
        visualDensity: VisualDensity.adaptivePlatformDensity,//Returns a visual density that is adaptive based on the defaultTargetPlatform.
        //visual Density : 얼마나 compact한지!
        //density가 크면 less dense 한거고 (??)
        //density가 작으면 more dense한거다 (??)
        //저거는 platform에 따라 다르게 하는듯


      ),
      home:SplashScreen(),
    );
  }
}