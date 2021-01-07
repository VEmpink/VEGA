import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.login_outlined), onPressed: () {}),
        title: Text('Home'),
        actions: [
          IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: Center(
        child: Text("Hello World!"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
