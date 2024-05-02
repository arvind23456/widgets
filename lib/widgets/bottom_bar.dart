import 'dart:math';
import 'package:flutter/material.dart';
import 'package:widgets/widgets/clip_rrect1.dart';
import 'package:widgets/widgets/colors.dart';
import 'package:widgets/widgets/navigation_rail1.dart';

void main() {
  runApp(BottomBar1());
}

class BottomBar1 extends StatefulWidget {
  @override
  State<BottomBar1> createState() => _BottomBar1State();
}

class _BottomBar1State extends State<BottomBar1> {
  int _currentIndex = 0;

  List pages = [
    const NavigationRail1(),
    DifferentColoredLetters(),
    const ClipRRect1App(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('different colors'),
        ),
        body: Center(
          child: pages[_currentIndex],
        ),
/*             (const SizedBox(
          width: 10,
        )), */
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          backgroundColor: Colors.teal,
          iconSize: 50,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: AnimatedIcon(
                  icon: AnimatedIcons.home_menu,
                  color: Colors.blue,
                  progress: kAlwaysDismissedAnimation),
            ),
            BottomNavigationBarItem(
              label: 'Menu',
              icon: Icon(
                Icons.sentiment_satisfied_rounded,
                color: Colors.amber,
              ),
            ),
            BottomNavigationBarItem(
                label: 'Profile',
                icon: AnimatedIcon(
                    icon: AnimatedIcons.list_view,
                    color: Colors.red,
                    progress: kAlwaysCompleteAnimation))
          ],
        ),
      ),
    );
  }
}
