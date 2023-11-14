import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themechanges/Screens/favourite_class.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<String> furiteList = ['Apple', 'Mango', 'Bannna', 'Graphs', 'Orange'];
  List<String> temp = [];
  FavouriteController favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("FavoriteList"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favouriteController.furiteList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                        onTap: () {
                          if (favouriteController.tempvar.contains(
                              favouriteController.furiteList[index]
                                  .toString())) {
                            // temp.remove(favouriteController.furiteList[index].toString());
                            favouriteController.removefavourite(
                                favouriteController.furiteList[index]
                                    .toString());
                          } else {
                            // temp.add(favouriteController.furiteList[index].toString());
                            favouriteController.addfavourite(favouriteController
                                .furiteList[index]
                                .toString());
                          }

                         
                        },
                        title: Text(
                            favouriteController.furiteList[index].toString()),
                        trailing: Obx(
                          () => Icon(
                            Icons.favorite,
                            color: favouriteController.tempvar.contains(
                                    favouriteController.furiteList[index]
                                        .toString())
                                ? Colors.red
                                : Colors.green,
                          ),
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}
