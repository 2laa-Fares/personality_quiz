import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // Value will not change after init.
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // Set text into container to can handel it's width
    //to take match parent by add continar width to double infinity.
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
