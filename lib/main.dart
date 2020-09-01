import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade800,
          appBar: AppBar(
              backgroundColor: Colors.blue, title: Text('Ask Me Anything')),
          body: Ask(),
        ),
      ),
    );

class Ask extends StatefulWidget {
  @override
  _AskState createState() => _AskState();
}

class _AskState extends State<Ask> {
  int currentBall = 1;
  void setImage() {
    setState(() {
      currentBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setImage();
                },
                child: Image.asset('images/ball$currentBall.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
