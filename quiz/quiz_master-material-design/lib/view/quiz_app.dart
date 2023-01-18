import 'package:flutter/material.dart';

import '../model/quiz_theme.dart';
import 'quiz_page.dart';

QuizTheme myTheme = QuizTheme();

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const QuizPage(),

      /// we've started changing and building new theme
      /// from this point
      theme: myTheme.buildTheme(),
    );
  }
}
