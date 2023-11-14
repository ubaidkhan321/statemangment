import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screentwo extends StatefulWidget {
  const Screentwo({super.key});

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("ScreenTwo"),
      ),
      body: Column(children: [
        InkWell
        (
          onTap: (){
            Get.toNamed('ScreenTwo');
          },
          child: Text("ScreenTwo"))
      ],),
    );
  }
}