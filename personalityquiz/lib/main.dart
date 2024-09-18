import 'package:flutter/material.dart';
import 'package:personalityquiz/Widgets/gradient.dart';

import 'package:personalityquiz/Widgets/quiz.dart';
import 'package:personalityquiz/Widgets/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'qs': 'What\'s your favourite colorssssss?',
      'ans': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'qs': 'What\'s your favourite Animal?',
      'ans': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Lion', 'score': 5},
        {'text': 'Dog', 'score': 3},
        {'text': 'Cat', 'score': 1}
      ]
    },
    {
      'qs': 'Who\'s your favourite Teacher?',
      'ans': [
        {'text': 'Asad', 'score': 10},
        {'text': 'Hammad', 'score': 5},
        {'text': 'Ahsan', 'score': 3},
        {'text': 'Ali', 'score': 1}
      ]
    },
  ];
  var _questionsindex = 0;
  var _totalScore = 0;

  void _answerquestion(int score) {
    _totalScore += score;

    setState(() {
      _questionsindex += 1;
    });
  }

  void reset() {
    setState(() {
      _questionsindex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 149, 180, 37)),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Quiz App',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
              backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            body: Stack(children: [
              gradient(),
              _questionsindex < _questions.length
                  ? Quiz(
                      question: _questions,
                      questionIndex: _questionsindex,
                      answerquestion: _answerquestion,
                    )
                  : Result(score: _totalScore, resethandler: reset),
            ])));
  }
}
