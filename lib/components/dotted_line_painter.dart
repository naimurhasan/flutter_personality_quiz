import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget{
  final double circleSize, space, height;
  final Color color;

  DottedLine({@required this.color, this.circleSize = 1.0, this.space = 5.0, @required this.height});

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: height,),
        CustomPaint(painter: _DottedLinePainter(this)),
        SizedBox(height: height+5,),
      ],
    );
  }

}

class _DottedLinePainter extends CustomPainter{

  _DottedLinePainter(this.data);

  final DottedLine data;

  @override
  void paint(Canvas canvas, Size size){
    double startX =0;
    final paint = Paint()
      ..color = data.color
      ..strokeWidth = 1;

    while(startX<size.width){
      canvas.drawCircle(Offset(startX, 5.0), 1.0, paint);
      startX += data.space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter painter) => false;
}