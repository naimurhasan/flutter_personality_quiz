import 'package:flutter/material.dart';
import 'single_option.dart';

class Options extends StatelessWidget{
  Options({@required this.options, this.checkedItemNo = 0, this.onTap});
  final List<String> options;
  final int checkedItemNo;
  final Function onTap;
  @override
  Widget build(BuildContext context){

    List<Widget> singleOptions = [];
    for(int i =0;i<options.length;i++){
      singleOptions.add(SingleOption(text: options[i],isChecked: checkedItemNo-1 == i, onTap: onTap, selfIndex: i+1,));
    }

    return Column(
      children: singleOptions,
    );
  }


}