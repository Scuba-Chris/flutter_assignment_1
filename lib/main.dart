// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './text.dart';
import './textControl.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {


  var _textIndex = 0;

  void _resetApp(){
    setState(() {
      _textIndex = 0;
    });
  }

  void _textchange(){
    if (_textIndex < _statements.length){
      setState(() {
        _textIndex = _textIndex + 1;
      });
      print(_textIndex);
    }
  }
  var _statements = [
    'I love to learn about coding!!', 
    'I love my new computer!!', 
    'World of Warcraft is the greatest game ever made!!',
];

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
      body: ShowText(text: _statements, textIndex: _textIndex, textHandler: _resetApp)
      ),
    );
  }

}