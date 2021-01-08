import "package:flutter/material.dart";

class FileViewer extends StatelessWidget {
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
        title: Text("FileViewer"),
      ),
      body: Center(
        child: Text("FileViewer"),
      ),
    );
  }
}
