import 'package:flutter/material.dart';

class Themes{
  final lightTheme =ThemeData.light().copyWith(
primaryColor: Colors.blueGrey[300],
appBarTheme: AppBarTheme(
  brightness: Brightness.light,
  textTheme: TextTheme(
    
  ),

),
buttonColor: Colors.pink
  );
    final darkTheme =ThemeData.dark().copyWith(
primaryColor: Colors.blueGrey[300],
appBarTheme: AppBarTheme(
  brightness: Brightness.dark,
  textTheme: TextTheme(
    
  ),

),
buttonColor: Colors.green
  );
}