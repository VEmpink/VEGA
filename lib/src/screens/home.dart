import "package:flutter/material.dart";
import 'package:photo_manager/photo_manager.dart';
import 'package:vega/src/components/home/album_showcase.dart';
import "../components/home/home_fab.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<AssetPathEntity> assetPathList = [];

  void initState() {
    super.initState();

    _fetchCameraRoll();
  }

  Future<void> _fetchCameraRoll() async {
    final bool hasPermission = await PhotoManager.requestPermission();

    if (hasPermission) {
      final cameraRoll = await PhotoManager.getAssetPathList(hasAll: false);

      setState(() {
        assetPathList = cameraRoll;
      });
    }
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
      body: AlbumShowcase(
        data: assetPathList,
      ),
      floatingActionButton: HomeFab(),
    );
  }
}
