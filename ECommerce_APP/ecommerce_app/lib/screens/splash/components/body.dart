import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget{
  @override
  _BodyState createState()=>_BodyState();
}

class _BodyState extends State<Body>{
  @override
  Widget build(BuildContext context){
    return SafeArea( ///???????????????
      child: SizedBox( //???
        width: double.infinity, //????
        child: Column(
          children: <Widget>[
            Expanded( //이게 머지
                flex:3, //이게 머지 아마 아래 EXpanded랑의 비율을 따지는거같음
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Text("JUNIEBERRY",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(36),
                          color:kPrimaryColor,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Welcome to JUNIEBERRY, Let's shop!"),
                    Spacer(flex:2,),
                    //Image.asset(
                    // "에셋주소",
                    //height:getProportionateScreenHeight(265),
                    //width:getProportionateScreenWidth(235),
                    //),
                  ],
                )
            ),
            Expanded(
                flex:2,
                child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
