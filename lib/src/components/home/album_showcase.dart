import "package:flutter/material.dart";
import 'package:photo_manager/photo_manager.dart';
import 'album_card.dart';

class AlbumShowcase extends StatelessWidget {
  AlbumShowcase({@required this.albums});

  final List<AssetPathEntity> albums;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 0,
        itemBuilder: (context, int index) {
          return AlbumCard(
            isOdd: index % 2 == 0,
            thumbnail: "s",
          );
        });
  }
}
