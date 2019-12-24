import 'constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/quiz_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Persoanlity Tester',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kColorAppBackground,
        textTheme: TextTheme(
          display1: TextStyle(
            fontSize: 32.0,
            color: kColorDisplay1,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            textBaseline: TextBaseline.alphabetic,
          ),
          display2: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            fontSize: 25.0,
          ),
          subhead: TextStyle(
            fontSize: 20.0,
            color: kColorDisplay1,
            fontFamily: 'Raleway',
          ),
          body1: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 16.0
          ),
          button: TextStyle(
            fontSize: 22.0,
            fontFamily: 'Raleway',
          ),
        ),
      ),
      home: QuizScreen(),
    );
  }
}