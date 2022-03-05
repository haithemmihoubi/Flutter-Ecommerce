import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color mainColor = Color(0xFF0FC2C0);

const Color mainColor2 = Color(0xFF0CABA8);
const Color darkColor =  Color(0xFF121212) ;
const Color mainColor3 = Color(0xFF008F8C);
const Color mainColor4 = Color(0xFF015958);
const Color darkGreyClr = Color(0xFF121212);

class ThemesApp {
  static final light = ThemeData(
    primaryColor: mainColor,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: darkGreyClr,
    backgroundColor: darkGreyClr,
    brightness: Brightness.dark,
  );
}
