import 'result_screen.dart';
import '../services/quiz_brain.dart';
import '../components/options.dart';
import '../components/question_text.dart';
import '../constants.dart';
import '../components/counting_text.dart';
import '../components/dotted_line_painter.dart';
import '../components/springing_button.dart';
import 'package:flutter/material.dart';
class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  QuizBrain quizBrain = QuizBrain();

  _onOptionTap(int optionChoosed){
    setState((){
      quizBrain.optionChoosed = optionChoosed;
    });
  }

  _onNextTap(){
    quizBrain.addScore(quizBrain.optionChoosed);
    if(quizBrain.hasNext){
      quizBrain.optionChoosed = 0;
     setState(() {
       quizBrain.forward();
     });
    }else{
      String msg = quizBrain.message;
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultScreen(msg)));
      setState(() {
        quizBrain.reset();
      });
    }
  }

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
            CountingText(current: quizBrain.quizNo, max: quizBrain.quizLength,),
            DottedLine(color: kColorDisplay1, height: 10.0,),
            QuestionText(quizBrain.question),
            SizedBox(height: 20.0),
            Expanded(child: Options(options:quizBrain.answers, checkedItemNo: quizBrain.optionChoosed, onTap:_onOptionTap)),
            NextButton(isLocked: quizBrain.optionChoosed == 0, onTap: _onNextTap),
            SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
