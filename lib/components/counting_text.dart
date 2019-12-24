import 'package:flutter/material.dart';

class CountingText extends StatelessWidget {
  CountingText({this.current, this.max});
  final int current, max;
  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Text('Question $current', style: Theme.of(context).textTheme.display1,),
          Text('/$max', style: Theme.of(context).textTheme.subhead,),
        ],
      );
  }
}
