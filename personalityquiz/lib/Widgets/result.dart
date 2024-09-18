import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.score, required this.resethandler});
  final int score;
  final VoidCallback resethandler;
  String get resultphrase {
    var resulttext = 'You did it';
    if (score <= 8) {
      resulttext = ' ';
    } else if (score <= 12) {
      resulttext = 'not bad';
    } else if (score <= 16) {
      resulttext = 'not not bad';
    } else {
      resulttext = 'you have bad personality';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Personality is : ',
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            resultphrase,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: resethandler,
            child: Text(
              'Try Again',
            ),
          )
        ],
      ),
    );
  }
}
