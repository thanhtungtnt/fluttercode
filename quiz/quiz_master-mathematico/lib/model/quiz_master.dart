import 'question.dart';

class QuizMaster {
  int _indexNumber = 0;

  final List<Question> _quiz = [
    Question('29 - 3 = 26', true),
    Question('711 - 4 = 677', false),
    Question('455 * 3 = 1365', true),
    Question('76 / 8 = 9.5', true),
    Question('Many Thanks, press any button to end the Quiz.', true),
  ];

  void nextQuestion() {
    if (_indexNumber <= _quiz.length) {
      _indexNumber++;
    }
  }

  String getQuestion() {
    return _quiz[_indexNumber].question;
  }

  bool getAnswer() {
    return _quiz[_indexNumber].answer;
  }

  bool isFinished() {
    if (_indexNumber >= _quiz.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _indexNumber = 0;
  }
}
