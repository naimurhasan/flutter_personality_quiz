import '../components/dotted_line_painter.dart';
import '../components/springing_button.dart';
import '../constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  ResultScreen(this.message);

  final String message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomCenter,
            image: AssetImage('images/bubbles.gif'),
          ),
        ),
        padding:
            EdgeInsets.only(top: 50.0, bottom: 5.0, right: 30.0, left: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Result: ',
              style: Theme.of(context).textTheme.display1,
            ),
            DottedLine(
              color: kColorDisplay1,
              height: 10.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    message,
                    style: Theme.of(context).textTheme.display2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.0,),
                  SpringingButton(onTap: (){Navigator.pop(context);}, child: Text('Test Again.'),),
                ],
              ),
            ),
            SizedBox(height: 80.0),
          ],
        ),
      ),
    );
  }
}
