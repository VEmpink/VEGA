import "package:flutter/material.dart";
import "src/screens/home.dart";
import "src/screens/album.dart";
import 'src/screens/file_viewer.dart';
import "src/screens/login.dart";
import "src/screens/settings.dart";
import 'src/screens/file_selector.dart';

void main() {
  runApp(VEGA());
}

class VEGA extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "Home",
      routes: {
        "Home": (context) => Home(),
        "Album": (context) => Album(),
        "FileViewer": (context) => FileViewer(),
        "Login": (context) => Login(),
        "Settings": (context) => Settings(),
        "FileSelector": (context) => FileSelector(),
      },
    );
  }
}
