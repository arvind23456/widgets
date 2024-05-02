import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: NavigationRail1(),
  ));
}

class NavigationRail1 extends StatefulWidget {
  const NavigationRail1({super.key});

  @override
  State<NavigationRail1> createState() => _NavigationRail1State();
}

class _NavigationRail1State extends State<NavigationRail1> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Rail'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            backgroundColor: Colors.greenAccent,
            labelType: NavigationRailLabelType.selected,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.ac_unit),
                label: Text('Home'),
                selectedIcon: Icon(Icons.ac_unit),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.mood),
                label: Text('Emojis'),
                selectedIcon: Icon(Icons.ac_unit),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.accessibility_rounded),
                label: Text('Humans'),
                selectedIcon: Icon(Icons.ac_unit),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
