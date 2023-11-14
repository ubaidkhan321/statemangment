

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Logincontroller extends GetxController{
  RxBool loading = false.obs;
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;

  void loginApi()async{


    loading.value = true;

     //when data is row form...............................

    // Map rowdata = {
    //   'email': emailcontroller.value.text,
    //   'password': passwordcontroller.value.text,

    // };


    try{
       final respone = await put(Uri.parse('https://reqres.in/api/users/2'),
      // row form data encord karange
       //body: jsonEncode(rowdata)
    body: {
      'email': emailcontroller.value.text,
      'job': passwordcontroller.value.text,

 }
 );
 var data;
 print(data);
 print(respone.statusCode);
 if(respone.statusCode==200){
  loading.value= false;
  Get.snackbar("Update Successfully",'Thanks');

 }else{
  loading.value = false;
    Get.snackbar("LoginFailed", data['error']);

 }

    }catch(e){
      loading.value = false;
     Get.snackbar('Exceptio', e.toString());

    }
   

  }
}