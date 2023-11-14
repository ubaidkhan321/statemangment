import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themechanges/Screens/switch_Class.dart';


class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
 final  Switchcontroller switchcontroller = Get.put(Switchcontroller());
 
  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() =>  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Text("Switch Button"),
                  Switch(value: switchcontroller.notification.value, onChanged: (value){
                    switchcontroller.changevalueswitch(value);
                    
                  }
                  ),
                  
                ],
              ),
            ),
          ),),
          // Obx(() {
          //   return  Switch(value: switchcontroller.notification.value, onChanged: (value){
          //   switchcontroller.changevalueswitch(value);
            
          // }
          // );
          // })
         
        ],
      ),
    );
  }
}