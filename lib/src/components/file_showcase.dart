import 'package:flutter/material.dart';
import 'file_card.dart';

class FileShowcase extends StatelessWidget {
  FileShowcase({this.data});

  final List data;

  @override
  Widget build(context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: List.generate(data.length, (index) {
        return FileCard(
          thumbnail: '',
        );
      }),
    );
  }
}
