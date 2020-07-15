import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final nextText;
  MyButton(this.nextText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: nextText,
      color: Colors.red,
      child: Text('press me ho'),
      textColor: Colors.white,
    );
  }
}
