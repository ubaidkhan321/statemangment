import 'package:get/get.dart';

class Switchcontroller extends GetxController{
 RxBool notification = false.obs;

 changevalueswitch(bool value){
  notification.value = value;
 }

}