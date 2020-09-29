import 'package:flutter/material.dart';
import 'Screens/A.dart';

void main() => runApp(CardTesting());

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
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Reoderable Card Testing'),
        ),
        body: ReorderableListView(
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
                    // Navigator.push(   todo figure out how to navigator to a new page called items, look at net ninja flutter animation app
                    //   context,
                    //   MaterialPageRoute(builder: (context) => A()),
                    // );
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
