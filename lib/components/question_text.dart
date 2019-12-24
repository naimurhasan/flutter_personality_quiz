import 'package:flutter/material.dart';

class QuestionText  extends StatelessWidget{
  QuestionText(this.text);
  final text;
  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: Theme.of(context).textTheme.display2,
    );
  }
}