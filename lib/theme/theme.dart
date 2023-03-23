import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get theme => ThemeData(
        fontFamily: 'Poppins',
textTheme: TextTheme(),
/*
        textTheme: TextTheme(
          bodySmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          bodyMedium:
        ),
*/
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
