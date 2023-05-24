import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsDetails extends StatelessWidget {
  const QuestionsDetails(this.questionData, {super.key});

  final Map<String, Object> questionData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            questionData["question"] as String,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            questionData["user_answer"] as String,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(185, 255, 255, 255),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          if (questionData["correct_answer"] != questionData["user_answer"])
            Text(
              questionData["correct_answer"] as String,
              style: GoogleFonts.lato(
                color: Colors.greenAccent,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
