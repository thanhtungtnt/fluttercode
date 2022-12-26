import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:rflutter_alert/rflutter_alert.dart';
import 'model/quiz_master.dart';

QuizMaster quizMaster = QuizMaster();

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Mathematical Quiz',
            style: GoogleFonts.lacquer(
              textStyle: TextStyle(
                color: Colors.purple.shade600,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Text> check = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizMaster.getAnswer();

    setState(() {
      if (quizMaster.isFinished() == true) {
        Alert(
          context: context,
          title: 'Quiz Completed.',
          desc:
              'We\'ve reached the end. Thanks for taking part. Meet you again.',
        ).show();

        quizMaster.reset();

        check = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          check.add(
            Text(
              'You\'re Right. Well Done.',
              style: GoogleFonts.laila(
                textStyle: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        } else {
          check.add(
            Text(
              'You\'re Wrong. Try Again.',
              style: GoogleFonts.laila(
                textStyle: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }
        quizMaster.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              alignment: Alignment.center,
              child: Text(
                quizMaster.getQuestion(),
                style: GoogleFonts.lalezar(
                  textStyle: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            checkingAnswer('Correct', true),
            checkingAnswer('Wrong', false),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: check,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container checkingAnswer(String corerctOrWrong, bool trueOrFalse) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: () {
          checkAnswer(trueOrFalse);
        },
        child: Text(
          corerctOrWrong,
          style: GoogleFonts.laila(
            textStyle: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
