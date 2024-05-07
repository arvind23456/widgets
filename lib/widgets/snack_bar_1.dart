import 'package:flutter/material.dart';
import 'package:widgets/widgets/custom_button.dart';

void main() {
  runApp(const MaterialApp(
    home: SnackBar1(),
  ));
}

class SnackBar1 extends StatefulWidget {
  const SnackBar1({super.key});

  @override
  State<SnackBar1> createState() => _SnackBar1State();
}

class _SnackBar1State extends State<SnackBar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: OutlinedButton(
              style:
                  OutlinedButton.styleFrom(backgroundColor: Colors.lightGreen),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.yellow[50],
                    duration: const Duration(seconds: 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    content: const customsnackbarmsg(
                      message: 'i am',
                    ),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: const Text('Click to show snackbar'),
            ),
          ),
          CustomButton(text: 'click me', onpressed: () {})
        ],
      ),
    );
  }
}

class customsnackbarmsg extends StatelessWidget {
  const customsnackbarmsg({Key? key, required this.message}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned(bottom: 20, left: 10, child: Icon(Icons.close)),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.horizontal,
          children: [
            Icon(Icons.thumb_up_sharp),
            Padding(padding: EdgeInsets.all(10)),
            // BackButtonIcon(),
            Text(
              'Shows the snackbar message',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
