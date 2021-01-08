import "package:flutter/material.dart";
import "../components/home/home-fab.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.login_outlined),
            onPressed: () {
              Navigator.pushNamed(context, "Login");
            }),
        title: Text("Home"),
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return WillPopScope(
                        onWillPop: () async => false,
                        child: AlertDialog(
                          content: Row(
                            children: [
                              CircularProgressIndicator(),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 32.0),
                                child: Text("Refreshing..."),
                              )
                            ],
                          ),
                        ));
                  },
                );
              }),
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.pushNamed(context, "Settings");
              })
        ],
      ),
      body: Center(
        child: Text("Hello World!"),
      ),
      floatingActionButton: HomeFab(),
    );
  }
}
