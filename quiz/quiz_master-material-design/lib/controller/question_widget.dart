import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key? key,
    required this.questions,
    required int counter,
  })  : _counter = counter,
        super(key: key);

  final List<Map<String, Object>> questions;
  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        questions[_counter]['question'].toString(),
        style: GoogleFonts.laila(
          textStyle: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
