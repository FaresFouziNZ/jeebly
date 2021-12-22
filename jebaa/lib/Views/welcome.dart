import 'package:flutter/material.dart';
import 'package:jebaa/Views/mainpage.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import '../Classes/trip.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Future<Widget> start() async {
    await Firebase.initializeApp();
    List<Trip> s;
    return MainView(
      trips: s,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.black54,
      image: const Image(
        image: AssetImage(
            'assets/png-clipart-gray-haired-girl-mayuri-shiina-steins-gate-anime-tutu-ru-music-gudi-manga-head.png'),
      ),
      navigateAfterFuture: start(),
    );
  }
}
