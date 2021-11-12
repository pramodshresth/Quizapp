import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final Map ques;
  Question(this.ques);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Text(
        ques['question'],
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
