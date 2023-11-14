 
 import 'package:get/get.dart';

class FavouriteController extends GetxController{
RxList<String> furiteList = ['Apple', 'Mango', 'Bannna', 'Graphs', 'Orange'].obs;
RxList tempvar = [].obs;
addfavourite(String value){
  tempvar.add(value);
}
removefavourite(String value){
  tempvar.remove(value);
}
}