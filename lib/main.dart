import 'package:flutter/material.dart';
import 'package:kampusmerdeka/pages/first_page.dart';
import 'package:get/get.dart';
import 'package:kampusmerdeka/pages/second_page.dart';
import 'package:kampusmerdeka/pages/third_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp( debugShowCheckedModeBanner: false, routes: {
      '/' : (context) => const FirstPage(),
      '/second' : (context) => const SecondPage(),
      '/third' : (context) =>  ThirdPage()
    },);
  }
}


