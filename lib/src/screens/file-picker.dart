import "package:flutter/material.dart";

class FilePicker extends StatelessWidget {
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
        title: Text("FilePicker"),
      ),
      body: Center(
        child: Text("FilePicker"),
      ),
    );
  }
}
