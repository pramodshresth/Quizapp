import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final String ans;
  final Map writeans;
  Answer(this.ans, this.writeans);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed) &&
                    widget.ans == widget.writeans["writeanswer"]) {
                  return Colors.green;
                } else if (states.contains(MaterialState.pressed) &&
                    widget.ans != widget.writeans["writeanswer"]) {
                  return Colors.red;
                } else {
                  return Colors.white;
                }
              },
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              widget.ans,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )),
    );
  }
}
