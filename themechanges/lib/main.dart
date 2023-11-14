import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themechanges/Login/LoginScreen.dart';
import 'package:themechanges/Screens/Langugae_Change.dart';
import 'package:themechanges/Screens/ScreenTwo.dart';
import 'package:themechanges/Screens/langauge_class.dart';
import 'package:themechanges/Screens/screenOne.dart';
import 'package:themechanges/Screens/switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LanguageChangeClass(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: "/LoginScreen", page: () => const LoginScreen()),
        GetPage(name: "/switchscreen", page: () => const SwitchScreen()),
        GetPage(
            name: "/", page: () => const LanguageChangeScreen()),
        GetPage(name: "/ScreenOne", page: () => const ScreenOne()),
        GetPage(name: "/Screentwo", page: () => const Screentwo()),
      ],
    );
  }
}
