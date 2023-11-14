import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:themechanges/Login/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  @override
  Widget build(BuildContext context) {
    Logincontroller controller = Get.put(Logincontroller());
    print("Rebuild");
    return Scaffold
    (
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailcontroller.value,
              decoration: const InputDecoration(
                hintText: 'Email',
                suffixIcon: Icon(Icons.email)
              ),
            ),
           const SizedBox(height: 30,),
            TextFormField(
              controller: controller.passwordcontroller.value,
              decoration: const InputDecoration(
                hintText: 'password',
                suffixIcon: Icon(Icons.lock)
              ),
            ),
           const SizedBox(
              height: 40,
            ),
            Obx(() {
              return
               InkWell(
              onTap: (){
                controller.loginApi();
                
      
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child:  Center(
                  child: controller.loading.value? const CircularProgressIndicator() : 
                   const Text('Login',style: TextStyle(color: Colors.white,fontSize: 18),)
              ),
            ),
               );
            })
           
          ],
        ),
      ),
    );
  }
}