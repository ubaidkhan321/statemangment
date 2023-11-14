import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemesChangerScreen extends StatefulWidget {
  const ThemesChangerScreen({super.key});

  @override
  State<ThemesChangerScreen> createState() => _ThemesChangerScreenState();
}

class _ThemesChangerScreenState extends State<ThemesChangerScreen> {
  @override
  Widget build(BuildContext context) {
    if(kDebugMode){
      print("Hellllllloooooooo");
    }
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
                         
              title: InkWell(
                onTap: (){
                  Get.bottomSheet(
                    Container(decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Light Mode"),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                         ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("dark Mode"),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                    )
                  );
                },
                
                child: Text("Change Themes")),
              subtitle: Text("do you want to Read this chat"),
              trailing: InkWell(
                onTap: (){
                      Get.defaultDialog(
                        backgroundColor: Colors.white,
                        title: "Delete chat",
                        titlePadding: const EdgeInsets.only(top: 3),
                        contentPadding: const EdgeInsets.all(2),
                         middleText: "Are you want to this code ",
                         middleTextStyle:TextStyle(color: Colors.teal) ,
                         //textConfirm: 'Yes',
                         //textCancel: 'No'
                         confirm: TextButton(
                          onPressed: (){
                            Get.back();
                          }, 
                         child:const Text("Yes")),
                         cancel: TextButton(
                          onPressed: (){
                            Get.back();
                          }, 
                         child:const Text("No"))
                         

                      );
                },
                child: Icon(Icons.more_vert_outlined)),
              
            ),
          )
        ],
      ),
    );
  }
}