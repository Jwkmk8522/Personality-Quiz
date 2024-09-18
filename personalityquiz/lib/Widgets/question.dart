import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.questionText});
  final String questionText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
