import 'package:flutter/material.dart';
import 'src/screens/home.dart';

void main() {
  runApp(VEGA());
}

class VEGA extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: Home(),
    );
  }
}
