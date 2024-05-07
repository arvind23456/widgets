import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LayoutBuilder1(),
  ));
}

class LayoutBuilder1 extends StatefulWidget {
  const LayoutBuilder1({super.key});

  @override
  State<LayoutBuilder1> createState() => _LayoutBuilder1State();
}

class _LayoutBuilder1State extends State<LayoutBuilder1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 500) {
              return const GridView1();
            } else {
              return const GridView2();
            }
          },
        ),
      ),
    );
  }
}

class GridView1 extends StatefulWidget {
  const GridView1({super.key});

  @override
  State<GridView1> createState() => _GridView1State();
}

class _GridView1State extends State<GridView1> {
  List items = [
    'arvind',
    'singh',
    'jammu',
    'samba',
    'chandigarh',
    '1 69546',
    '265464',
    '56789',
    'asdgf',
    'erdgfvsfd',
    'asdg',
    'asdfg',
    'asdf',
    'xcvb',
    'adfgasdjuf'
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, //constraints.maxWidth > 500 ? 3 : 2,
        crossAxisSpacing: 7,
        mainAxisSpacing: 10,
      ),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          elevation: 10,
          shadowColor: Colors.blue,
          surfaceTintColor: Colors.amber,
          child: GridTile(
            header: Text(
              "${items[index]}",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, shadows: [
                Shadow(
                  color: Colors.yellow,
                  blurRadius: 50,
                  // offset: Offset(30, 90),
                ),
              ]),
            ),
            footer: NavigationBar(destinations: const [
              Icon(Icons.price_change_sharp),
              Icon(Icons.menu_book),
            ]),
            child: Image.network('https://picsum.photos/250?$index'),
          ),
        );
      },
    );
  }
}

class GridView2 extends StatefulWidget {
  const GridView2({super.key});

  @override
  State<GridView2> createState() => _GridView2State();
}

class _GridView2State extends State<GridView2> {
  List items = [
    'arvind',
    'singh',
    'jammu',
    'samba',
    'chandigarh',
    '1 69546',
    '265464',
    '56789',
    'asdgf',
    'erdgfvsfd',
    'asdg',
    'asdfg',
    'asdf',
    'xcvb',
    'adfgasdjuf'
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //constraints.maxWidth > 500 ? 3 : 2,
        crossAxisSpacing: 7,
        mainAxisSpacing: 10,
      ),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          shadowColor: Colors.blue,
          surfaceTintColor: Colors.amber,
          child: GridTile(
            header: Text(
              "${items[index]}",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, shadows: [
                Shadow(
                  color: Colors.yellow,
                  blurRadius: 50,
                  // offset: Offset(30, 90),
                ),
              ]),
            ),
            footer: NavigationBar(destinations: const [
              Icon(Icons.price_change_sharp),
              Icon(Icons.menu_book),
            ]),
            child: Image.network('https://picsum.photos/250?$index'),
          ),
        );
      },
    );
  }
}











/* 
ListView.separated(
              itemBuilder: (context, index) {
                return Card(
                    elevation: 10,
                    shadowColor: Colors.amber,
                    child: GridTileBar(
                        trailing: Icon(Icons.ac_unit_rounded),
                        title: Text(
                          items[index],
                          strutStyle:  StrutStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          style: TextStyle(
                              letterSpacing: 5, decorationThickness: 60),
                        )));
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 30,
                  indent: 50,
                  endIndent: 50,
                  color: Colors.pink[50],
                  thickness: 3,
                );
              },
              itemCount: items.length,
              padding: const EdgeInsets.all(10),
            ); */