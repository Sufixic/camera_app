import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Future_choiceimage extends StatefulWidget {
  const Future_choiceimage({Key? key}) : super(key: key);

  @override
  State<Future_choiceimage> createState() => _Future_choiceimageState();
}

class _Future_choiceimageState extends State<Future_choiceimage> {
  File? _image;
  final picker = ImagePicker();
  Future choiseImage() async {
    var pickedImage = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickedImage!.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              choiseImage();
            },
            child: _image == null
                ? const Icon(Icons.camera_alt,size: 50.0,)
                : Image.file(
              _image!,
            )),
      ),
    );
  }
}