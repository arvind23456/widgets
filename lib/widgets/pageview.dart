import 'package:flutter/material.dart';
import 'package:widgets/widgets/bottom_bar.dart';
import 'package:widgets/widgets/clip_rrect1.dart';
import 'package:widgets/widgets/colors.dart';
import 'package:widgets/widgets/navigation_rail1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Page'),
          ),
          body: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            reverse: false,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            children: [
              const NavigationRail1(),
              DifferentColoredLetters(),
              const ClipRRect1App(),
            ],
          ),
          // bottomNavigationBar: BottomBar1(),
        ),
      ),
    );
  }
}
