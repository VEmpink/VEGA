import "package:flutter/material.dart";

class Home extends StatelessWidget {
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
          IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: Center(
        child: Text("Hello World!"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Wrap(
                  children: [
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text("Add Images/Videos"),
                      onTap: () {
                        Navigator.pushNamed(context, "FilePicker");
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.file_present),
                      title: Text("Add Another File"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.photo_library),
                      title: Text("Create Private Album"),
                      onTap: () {},
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
