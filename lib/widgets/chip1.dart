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
    return Scaffold(
      appBar: AppBar(),
      body: const Wrap(
        spacing: 10,
        runSpacing: 15,
        //  runAlignment: WrapAlignment.center,
        //   alignment: WrapAlignment.spaceEvenly,

        children: [
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('Sections i amt ehe '),
            //  onDeleted: () {},
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('heelo'),
            //  onDeleted: () {},
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('bat'),
            //  onDeleted: () {}
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('badmintion'),
            //  onDeleted: () {},
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('Scrickety'),
            //  onDeleted: () {},
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('football'),
            //  onDeleted: () {},
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('heyy heyy'),
            //  onDeleted: () {},
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('Sections i amt ehe '),
            //  onDeleted: () {},
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text(' chandigarh'),
            //  onDeleted: () {},
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('batman '),
            //  onDeleted: () {},
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('Section'),
            //  onDeleted: () {},
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('spideraman'),
            //  onDeleted: () {},
            elevation: 5,
          ),
          Chip(
            labelPadding: EdgeInsets.all(10),
            label: Text('someone'),
            //  onDeleted: () {},
            elevation: 5,
          ),
        ],
      ),
    );
  }
}
