import 'package:flutter/material.dart';
import './text.dart';
import './button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var textIndex = 0;

  final texts = const [
    'Change me',
    'Change me again',
    'Ok that\'s enough changing bro',
    'Bro seriously fucking stop',
  ];

  void nextText() {
    setState(() {
      textIndex = textIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Shit App'),
        ),
        body: Column(
          children: <Widget>[
            MyText(texts[textIndex]),
            MyButton(nextText),
          ],
        ),
      ),
    );
  }
}
