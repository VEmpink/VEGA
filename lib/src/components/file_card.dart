import 'package:flutter/material.dart';

class FileCard extends StatefulWidget {
  FileCard({this.thumbnail});

  final String thumbnail;

  @override
  _FileCardState createState() => _FileCardState();
}

class _FileCardState extends State<FileCard> {
  @override
  FileCard get widget => super.widget;

  @override
  Widget build(context) {
    return Text('This is file card');
  }
}
