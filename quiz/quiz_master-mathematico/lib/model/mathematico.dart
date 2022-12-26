class Mathematico {
  String question;
  bool answer;

  Mathematico(this.question, this.answer);
}

class QuizMaster {
  int _index = 0;

  final List<Mathematico> _quiz = [
    Mathematico('29 + 5 = 34', true),
    Mathematico('71 - 4 = 66', false),
    Mathematico('51 - 9 = 41', false),
    Mathematico('78 + 6 = 84', true),
  ];

  void nextQuestion() {
    if (_index == _quiz.length - 1) {
      _index++;
    }
  }

  String getQuestion() {
    return _quiz[_index].question;
  }

  bool getAnswer() {
    return _quiz[_index].answer;
  }

  bool isFinished() {
    if (_index >= _quiz.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _index = 0;
  }
}
