import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionTitle extends StatelessWidget {
  const QuestionTitle(this.questionData, {super.key});

  final Map<String, Object> questionData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: questionData["user_answer"] == questionData["correct_answer"]
            ? Colors.green
            : Colors.red,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          ((questionData["question_index"] as int) + 1).toString(),
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
