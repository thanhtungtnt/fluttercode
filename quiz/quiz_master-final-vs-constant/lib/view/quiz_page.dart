import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_master/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../controller/padding_custom.dart';
import '../model/constant.dart';

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
          //shrinkWrap: true,
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
            const SizedBox(
              height: 10,
            ),
            checkingAnswer('Wrong', false),
            PaddingCustom(check: check),
          ],
        ),
      ),
    );
  }

  Container checkingAnswer(String corerctOrWrong, bool trueOrFalse) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: boxDecorationColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: elevatedButtonPrimaryColor,
        ),
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
