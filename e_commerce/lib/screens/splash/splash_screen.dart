import 'package:e_commerce/screens/splash/components/body.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context); //맨 처음에 이거 해줘야함
    return Scaffold(
      body: Body(),
    );
  }
}