import "package:flutter/material.dart";
import "package:file_picker/file_picker.dart";

class HomeFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
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
                      Navigator.pushNamed(context, "FileSelector");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.file_present),
                    title: Text("Add Another File"),
                    onTap: () async {
                      FilePickerResult result = await FilePicker.platform
                          .pickFiles(
                              type: FileType.custom,
                              allowedExtensions: ["swf", "flv"]);

                      await FilePicker.platform.clearTemporaryFiles();

                      print(result);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.photo_library),
                    title: Text("Create Private Album"),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Create Private Album"),
                              content: Wrap(children: [
                                Text("Please enter the Album name"),
                                TextField()
                              ]),
                              actions: [
                                FlatButton(
                                  child: Text("CREATE"),
                                  onPressed: () {},
                                )
                              ],
                            );
                          });
                    },
                  ),
                ],
              );
            });
      },
    );
  }
}
