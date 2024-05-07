import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('different colors'),
        ),
        body: DifferentColoredLetters(),
      ),
    );
  }
}

class DifferentColoredLetters extends StatelessWidget {
  String text =
      "hello everybody, in this there will be random colors ciolor will be given to each and everylettre sdfjkhadklfjhka fskdf arghhl ei am the only one int this world no come ";

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 10,
        runSpacing: 30,
        //  alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.spaceAround,
        direction: Axis.vertical,
        children: [
          for (var i = 0; i < text.length; i++)
            Text(
              text[i],
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(
                  255,
                  Random().nextInt(250),
                  Random().nextInt(250),
                  Random().nextInt(250),
                ),
              ),
            ),
        ]);
  }
}























/*  import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();

  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(3));
  }

  @override
  Widget build(BuildContext context) {
    return 
  }
}
  */
