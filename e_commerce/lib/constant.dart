import 'package:flutter/material.dart';

const kPrimaryColor =Color(0xFFFF7643);
const kPrimaryLightColor =Color(0xFFFFECDF);
const kPrimaryGradientColor =LinearGradient(
    begin:Alignment.topLeft, //왼쪽 위에서
    end:Alignment.bottomRight, //오른쪽 아래까지
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);//두가지 색으로 선형 그라데이션 생성
const kSecondaryColor=Color(0xFF979797);
const kTextColor =Color(0xFF757575);

const kAnimationDuration=Duration(milliseconds: 200);
