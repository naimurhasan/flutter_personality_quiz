import 'package:flutter/material.dart';
import '../constants.dart';

class SingleOption extends StatelessWidget{

  SingleOption({@required this.text, this.isChecked = false, this.onTap, this.selfIndex});

  final String text;
  final bool isChecked;
  final Function onTap;
  final int selfIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: InkWell(
        customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        onTap: (){
          onTap(selfIndex);
        },
        splashColor: Color(0x3cFFFFFF),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          decoration: BoxDecoration(
            border: Border.all(color: kColorBorder, width: 2.0),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(text, style: Theme.of(context).textTheme.body1),
              ),
              CircleAvatar(
                backgroundColor: kColorAction,
                radius: 12.0,
                child: isChecked ? Icon(Icons.check, size: 15.0,color: Colors.white,) : SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}