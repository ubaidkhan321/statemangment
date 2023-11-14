import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageChangeScreen extends StatefulWidget {
  const LanguageChangeScreen({super.key});

  @override
  State<LanguageChangeScreen> createState() => _LanguageChangeScreenState();
}

class _LanguageChangeScreenState extends State<LanguageChangeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         

          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const  SizedBox(height: 50,),
          Row(
            children: [
              OutlinedButton(
                onPressed: (){
                  Get.updateLocale( const Locale('en','US'));
                },
                 child: const Text("English")),
                const  SizedBox(width: 30,),
                 OutlinedButton(
                onPressed: (){
                   Get.updateLocale( const Locale('ur','PK'));
                },
                 child: const Text("Urdu")),
            ],
          )
        ],
      ),
    );
  }
}