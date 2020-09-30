import 'package:flutter/material.dart';

class A extends StatelessWidget {
  final String pagename;
  A({this.pagename});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(pagename),
        ),
        body: Column(
          children: [
            FloatingActionButton(
                elevation: 2,
                backgroundColor: Colors.green,
                hoverColor: Colors.yellow,
                child: Icon(
                  Icons.arrow_left,
                  size: 50,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            Text(
              '$pagename in the house',
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
