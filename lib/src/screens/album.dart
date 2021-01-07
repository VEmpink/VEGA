import "package:flutter/material.dart";

class Album extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Album"),
      ),
      body: Center(
        child: Text("Album"),
      ),
    );
  }
}
