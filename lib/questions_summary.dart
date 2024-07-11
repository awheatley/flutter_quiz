import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 30,
                width: 30,
                margin: const EdgeInsets.only(right: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: data['user_answer'] == data['correct_answer']
                      ? Colors.blue
                      : Colors.red,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data['user_answer'] as String,
                      style: const TextStyle(color: Colors.red),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      data['correct_answer'] as String,
                      style: const TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
