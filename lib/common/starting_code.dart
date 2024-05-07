import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Chip1(),
  ));
}

class Chip1 extends StatefulWidget {
  const Chip1({super.key});

  @override
  State<Chip1> createState() => _Chip1State();
}

class _Chip1State extends State<Chip1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
