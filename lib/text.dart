import 'package:flutter/material.dart';

class TextDisplayed extends StatelessWidget {
  final String displayedText;

  TextDisplayed(this.displayedText);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        displayedText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
    ));
  }
}