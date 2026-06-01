import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BallPage(),
    );
  }
}
class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int BallNumber = 1;
  void changeBall() {
    setState(() {
      BallNumber = Random().nextInt(5) + 1;
    });
    debugPrint('I got clicked $BallNumber');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Title(color: Colors.white, child: Text('Ask Me Anyhting')),

      ),
      body: Center(
        child: TextButton(
          onPressed: changeBall,
          child: Image.asset('images/ball$BallNumber.png'),
        ),
      ),
    );
  }
}


