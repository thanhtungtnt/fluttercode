import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/constant.dart';
import 'quiz_page.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarBackgroundColor,
          title: Text(
            'Mathematical Quiz',
            style: GoogleFonts.lacquer(
              textStyle: TextStyle(
                color: Colors.purple.shade50,
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
