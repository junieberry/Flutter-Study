import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity, //너비 최대
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: SplashContent(),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                  child: Container(
                color: kPrimaryLightColor,
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "JUNIEBERRY",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Welcome to JUNIEBERRY, Let's shop!",
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          "assets/images/splash_1.png",
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
