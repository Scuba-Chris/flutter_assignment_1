import 'package:flutter/material.dart';

class ChangeText extends StatelessWidget {
  final Function textHandler;

  ChangeText(this.textHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text('change text'),
        onPressed: textHandler,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
