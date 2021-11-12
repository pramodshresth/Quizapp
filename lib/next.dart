import 'package:flutter/material.dart';

class Next extends StatelessWidget {
  final VoidCallback onpress;
  Next(this.onpress);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: ElevatedButton(
          onPressed: onpress,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Next",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          )),
    );
  }
}
