import 'package:flutter/material.dart';
import '../model/quiz_theme.dart';

/// In a custom theme page we have described color and fonts
/// We may add more custom theme-features later
///

class Question extends StatelessWidget {
  const Question({Key? key, required this.questions, required this.index})
      : super(key: key);
  final List<Map<String, Object>> questions;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Text(
        '${questions[index]['question']}',
        textAlign: TextAlign.center,
        style: QuizTheme.questionStyle,
      ),
    );
  }
}
