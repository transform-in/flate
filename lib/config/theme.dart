import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData implementAndoidTheme() {
  return ThemeData(
    primarySwatch: Colors.teal,
    accentColor: Colors.white,
    canvasColor: Color.fromRGBO(255, 254, 229, 1),
    fontFamily: 'Raleway',
    textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          title: TextStyle(
            fontSize: 18,
            fontFamily: 'RobotCondensed',
            fontWeight: FontWeight.bold,
          ),
          display1: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          display2: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
  );
}

CupertinoThemeData implementIOSTheme() {
  return CupertinoThemeData();
}
