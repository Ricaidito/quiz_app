import 'package:flutter/material.dart';
import 'package:quiz_app/question_title.dart';
import 'package:quiz_app/questions_details.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (questionData) => Row(
                  children: [
                    QuestionTitle(questionData),
                    const SizedBox(width: 20),
                    QuestionsDetails(questionData),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
