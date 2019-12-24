import 'package:flutter/material.dart';
import 'package:spring_button/spring_button.dart';

class NextButton extends StatelessWidget {
  NextButton({@required this.isLocked, @required this.onTap});
  final bool isLocked;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return  isLocked
        ?
    RoundedCornerButton(child: Icon(Icons.lock),)
        :
    SpringingButton(onTap: onTap, child: Text('Next', style: Theme.of(context).textTheme.button));
  }
}


class SpringingButton extends StatelessWidget {
  final Widget child;
  final Function onTap;

  const SpringingButton({this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: SpringButton(
          SpringButtonType.OnlyScale,
          RoundedCornerButton(child: child),
          onTap: onTap,
        ));
  }
}

class RoundedCornerButton extends StatelessWidget{
  RoundedCornerButton({@required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 42.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/button-bg.png'),
        ),
      ),
      child: child,
    );
  }
}