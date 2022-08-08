import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jebaa/Database/auth.dart';
import 'package:provider/provider.dart';
import 'Views/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(StreamProvider.value(
    value: AuthService().user,
    initialData: null,
    child: MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFeaeef7)),
      debugShowCheckedModeBanner: false,
      // initialRoute: ,
      routes: {
        '/': (context) => const Welcome(),
      },
    ),
  ));
}
