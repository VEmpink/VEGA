import "package:flutter/material.dart";

class FileSelector extends StatelessWidget {
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
        title: Text("FileSelector"),
      ),
      body: Center(
        child: Text("FileSelector"),
      ),
    );
  }
}
