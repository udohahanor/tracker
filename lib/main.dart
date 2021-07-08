import 'package:flutter/material.dart';

import 'homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GPS Tracker',
      home: HomeScreen(),
    );
  }
}
