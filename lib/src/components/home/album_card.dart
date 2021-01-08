import "package:flutter/material.dart";

class AlbumCard extends StatelessWidget {
  AlbumCard({@required this.isOdd, this.thumbnail});
  final bool isOdd;
  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return Card();
  }
}
