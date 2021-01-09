import 'dart:io';

import "package:flutter/material.dart";

class AlbumCard extends StatefulWidget {
  AlbumCard({@required this.albumName, this.thumbnail, this.totalFiles});

  final String albumName;
  final int totalFiles;
  final File thumbnail;

  _AlbumCardState createState() => _AlbumCardState();
}

class _AlbumCardState extends State<AlbumCard> {
  double opacity = 1;

  @override
  AlbumCard get widget => super.widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Opacity(
        opacity: opacity,
        child: Card(
            margin: EdgeInsets.all(0),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: GridTile(
              child: Image.file(
                widget.thumbnail,
                fit: BoxFit.cover,
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text(
                    '${widget.albumName} ${widget.totalFiles != 1 ? widget.totalFiles : ""}'),
              ),
            )),
      ),
      onTapDown: (_) {
        setState(() {
          opacity = 0.85;
        });
      },
      onTap: () {
        Navigator.pushNamed(context, "Album");
      },
      onTapUp: (_) {
        setState(() {
          opacity = 1;
        });
      },
      onLongPress: () {
        print('Album card long press');
      },
      onLongPressEnd: (_) {
        setState(() {
          opacity = 1;
        });

        Navigator.pushNamed(context, "Album");
      },
    );
  }
}
