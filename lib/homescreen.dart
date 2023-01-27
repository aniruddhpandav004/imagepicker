
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

  String? path = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            Image.file(File("$path")),

            ElevatedButton(onPressed: () async{
              ImagePicker image = ImagePicker();
              XFile? xfile = await image .pickImage(source: ImageSource.gallery);

              setState(() {
                path = xfile!.path;
              });

            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
