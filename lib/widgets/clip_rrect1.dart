// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: ClipRRect(),
//   ));
// }

// class ClipRRect extends StatefulWidget {
//   const ClipRRect({super.key});

//   @override
//   State<ClipRRect> createState() => _NavigationRail1State();
// }

// class _NavigationRail1State extends State<ClipRRect> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('ClipRRect'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: ClipRect(
//             borderradius :,
//             child: Container(
//               width: 200,
//               height: 500,
//               color: Colors.amber,
//             ),
//           ),
//         ));
//   }
// }

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const ClipRRect1App());
}

class ClipRRect1App extends StatelessWidget {
  const ClipRRect1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ClipRRect Sample')),
        body: const ClipRRect1Example(),
      ),
    );
  }
}

class ClipRRect1Example extends StatelessWidget {
  const ClipRRect1Example({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.white, fontSize: 24);

    return Center(
      child: Column(
        textDirection: TextDirection.ltr,
        mainAxisSize: MainAxisSize.max,
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),

              transform: Matrix4.rotationZ(0.2),
              //transformAlignment: Alignment.centerLeft,
              color: Colors.blue,
              child: const Text('icon button', style: style),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(40.0),
            ),
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: Colors.purple,
              child: const Text('Wiukolo', style: style),
            ),
          ),
          // ClipRRect(
          //   borderRadius: const BorderRadius.horizontal(
          //       left: Radius.elliptical(12, 25),
          //       right: Radius.elliptical(40, 70)),
          // child:
          Container(
              alignment: Alignment.center,
              color: Colors.amber,
              // transform: Matrix4.skewY(50),
              transform: Matrix4.rotationZ(0.5),
              transformAlignment: Alignment.topCenter,
              constraints: const BoxConstraints(maxWidth: 250, minHeight: 100),
              child: const Text(
                'constraints',
                style: style,
              )),
        ],
      ),
    );
  }
}
