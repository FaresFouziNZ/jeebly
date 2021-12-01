import 'package:flutter/material.dart';
import 'package:jebaa/Views/mainpage.dart';
import 'Views/welcome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // initialRoute: ,
    routes: {
      '/': (context) => const Welcome(),
      '/searching': (context) => const MainView(),
    },
  ));
}
