import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('New'),
          backgroundColor: Colors.blue,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void ChangeImage() {
    setState(() {
      int ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    int ballNumber = Random().nextInt(5) + 1;

    return Center(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  ChangeImage();
                },
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
