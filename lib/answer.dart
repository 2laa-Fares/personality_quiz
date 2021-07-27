import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Value will not change after init.
  final VoidCallback selectHandeler;
  final String answerText;

  Answer(this.selectHandeler, this.answerText);

  @override
  Widget build(BuildContext context) {
    // Set text into container to can handel it's width
    //to take match parent by add continar width to double infinity.
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandeler,
      ),
    );
  }
}
