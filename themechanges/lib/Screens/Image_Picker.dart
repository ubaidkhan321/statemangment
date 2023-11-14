import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themechanges/Screens/ImagePickerClass.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePick Controller = Get.put(ImagePick());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Obx(() {
        return Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: Controller.imagepath.isNotEmpty ?
               FileImage(File(Controller.imagepath.toString())) :
                  null
               
                
               
            ),
            TextButton(
              onPressed: (){
                Controller.getImage();
              },
               child:const Text("Image Pick"))
          ],
        );
      }),
    );
  }
}