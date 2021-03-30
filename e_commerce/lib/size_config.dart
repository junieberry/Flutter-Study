import 'package:flutter/material.dart';

class SizeConfig{
  //static 변수니까 class.변수 이런 식으로 사용할 수 있음!!
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultsize;
  static Orientation orientation;

  void init(BuildContext context){
    //화면 크기를 얻기 위해서 사용한다
    _mediaQueryData=MediaQuery.of(context);
    screenWidth=_mediaQueryData.size.width; //앱 화면 너비 double
    screenHeight=_mediaQueryData.size.height; //앱 화면 높이 double
    orientation=_mediaQueryData.orientation; //앱 orientation (가로 혹은 세로)
  }
}

//get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight){
  double screenHeight=SizeConfig.screenHeight;
  //812 is the layout height that designer use
  screenHeight=(inputHeight/812.0)*screenHeight;
  return screenHeight;
}

//get the proportionate height as per screen size
double getProportionateScreenWidth(int inputWidth){
  double screenWidth=SizeConfig.screenWidth;
  //375 is the layout width that designer use
  screenWidth =(inputWidth/375.0)*screenWidth;
  return screenWidth;
}