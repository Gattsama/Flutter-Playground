import 'package:flutter/material.dart';

class A extends StatefulWidget {
  @override
  _AState createState() => _AState();
}

class _AState extends State<A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('A'),
      ),
      body: Text(
        'A',
        style: TextStyle(fontSize: 48, color: Colors.white),
      ),
    );
  }
}
