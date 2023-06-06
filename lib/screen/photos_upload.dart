import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhotos extends StatefulWidget {
  const UploadPhotos({super.key});

  @override
  State<UploadPhotos> createState() => _UploadPhotosState();
}

class _UploadPhotosState extends State<UploadPhotos> {
  final ImagePicker _imagePicker = ImagePicker();
  List<File> multiImages = [];

  multiImagePicker() async {
    final List<XFile> pickedImage = await _imagePicker.pickMultiImage();
    if (pickedImage != null) {
      pickedImage.forEach((e) {
        multiImages.add(File(e.path));
      });
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          "Upload minimum 6 photos fo vehicle\ninside and outside photo size should be more than 2mb",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: multiImages.length == 0
              ? addphotos()
              : GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  shrinkWrap: true,
                  children: multiImages
                      .map((e) => Image.file(
                            File(e.path),
                            fit: BoxFit.cover,
                          ))
                      .toList(),
                ),
        ),
        multiImages.length > 0 && multiImages.length <= 9
            ? addphotos()
            : Container(),
      ]),
    );
  }

  Widget addphotos() {
    return InkWell(
        onTap: () {
          multiImagePicker();
        },
        child: Center(
          child: Icon(
            Icons.add_a_photo,
            color: Colors.black12,
            size: 100,
          ),
        ));
  }
}
