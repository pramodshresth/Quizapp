import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  final int _i;
  final int _j;
  QuestionIndex(this._i, this._j);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        "$_i/$_j",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
      ),
    );
  }
}
