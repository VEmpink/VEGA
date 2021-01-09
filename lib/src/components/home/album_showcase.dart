import 'dart:io';

import "package:flutter/material.dart";
import 'package:photo_manager/photo_manager.dart';
import 'album_card.dart';

class AlbumShowcase extends StatelessWidget {
  AlbumShowcase({@required this.data});
  final List<AssetPathEntity> data;

  @override
  Widget build(contextBuild) {
    return GridView.count(
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        children: List.generate(data.length, (index) {
          return FutureBuilder(
              future: data[index].assetList,
              builder: (contextParentFutureBuilder, parentSnapshot) {
                final List<AssetEntity> assetList = parentSnapshot.data;

                if (parentSnapshot.connectionState == ConnectionState.done) {
                  // Get thumbnail
                  return FutureBuilder(
                      future: assetList[0].file,
                      builder: (contextChildFutureBuilder, childSnapshot) {
                        final File thumbnail = childSnapshot.data;

                        if (childSnapshot.connectionState ==
                            ConnectionState.done) {
                          return AlbumCard(
                            albumName: data[index].name,
                            thumbnail: thumbnail,
                            totalFiles: data[index].assetCount,
                          );
                        } else {
                          return Text("Loading...");
                        }
                      });
                } else {
                  return Text("Loading...");
                }
              });
        }));
  }
}
