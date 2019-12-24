class QuizBrain {
  int _quizeIndex = 0;
  int _score = 0;
  int optionChoosed = 0;

  List<Map> _quiz = [
    {
      'question': 'What\'s your favourite color?',
      'answers': [
        {'answer': 'Black', 'score': 10},
        {'answer': 'Red', 'score': 5},
        {'answer': 'Green', 'score': 3},
        {'answer': 'White', 'score': 1},
      ],
    },
    {
      'question': 'What size hair do you prefer?',
      'answers': [
        {'answer': 'Extremely Long', 'score': 10},
        {'answer': 'Normal', 'score': 1},
        {'answer': 'Short', 'score': 2},
      ],
    },
    {
      'question': 'What\' your favourite animal?',
      'answers': [
        {'answer': 'Rabbit', 'score': 2},
        {'answer': 'Snake', 'score': 8},
        {'answer': 'Elephent', 'score': 5},
        {'answer': 'Lion', 'score': 2},
      ],
    },
  ];

  int get quizNo => _quizeIndex+1;

  int get quizLength => _quiz.length;

  int get score => _score;

  bool get hasNext => _quizeIndex+1 < (quizLength);

  String get question => _quiz[_quizeIndex]['question'];

  List<String> get answers {
    return (_quiz[_quizeIndex]['answers'] as List)
          .map(
            (var item){return (item['answer'] as String);}
          ).toList();
  }  

  String get message{
    print('SCORE IS $_score');
    if(_score<8){
      return 'You are aweosme!';
    }else if(_score<16){
      return 'You are not so bad!';
    }else{
      return 'You are so bad.';
    }
  }

  void addScore(int answerNo){
    _score += _quiz[_quizeIndex]['answers'][answerNo-1]['score'];
  }

  void forward(){
    
    if(!hasNext) throw("FORWARD FAILED! QUIZEBRAIN DON'T HAVE ANY MORE QUESTION");
    
     _quizeIndex++;
  }

  void reset(){
    _quizeIndex = 0;
    _score = 0;
    optionChoosed = 0;
  }
}
