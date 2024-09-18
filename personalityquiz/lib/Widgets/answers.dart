import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  const Answers({super.key, required this.answerText, required this.handler});
  final String answerText;
  final VoidCallback handler;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: handler,
          child: Text(answerText)),
    );
  }
}
