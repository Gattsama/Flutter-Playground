import 'package:flutter/material.dart';
import 'Screens/A.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardTesting(),
    );
  }
}

class CardTesting extends StatefulWidget {
  @override
  _CardTestingState createState() => _CardTestingState();
}

class _CardTestingState extends State<CardTesting> {
  List<String> letters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Reoderable Card Testing'),
        ),
        body: ReorderableListView(
          header: Text(
            'LOGO HERE',
            style: TextStyle(fontSize: 60),
          ),
          children: <Widget>[
            for (final item in letters)
              Card(
                key: ValueKey(item),
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text(item),
                  onTap: () {
                    print(item);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => A(
                          pagename: item,
                        ),
                      ),
                      // Navigator.push(context,
                      //   MaterialPageRoute(builder: (context) => Details(trip: trip)));
                    );
                  },
                ),
              )
          ],
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (newIndex > oldIndex) {
                newIndex -= 1;
              }
              final item = letters.removeAt(oldIndex);
              letters.insert(newIndex, item);
            });
          },
        ),
      ),
    );
  }
}
