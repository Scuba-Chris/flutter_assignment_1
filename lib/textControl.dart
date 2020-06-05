import 'package:flutter/material.dart';
import './text.dart';

class ShowText extends StatelessWidget {
  final List<Map<String, Object>> text;
  final int textIndex;
  final Function textHandler;

  ShowText(this.text, this.textIndex, this.textHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextDisplayed(
          statements[textIndex]
        )
      ],
    );
  }
}
