import 'package:flutter/material.dart';
import 'package:jebaa/Views/mainpage.dart';
import 'package:splashscreen/splashscreen.dart';

import '../Classes/trip.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    //TODO get all open trips
    //List<Trip> tripsList = getTrips();
  }

  Future<void> getTrips() async {
    List<Trip> s;
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: Colors.black54,
      image: const Image(
        image: AssetImage(
            'assets/png-clipart-gray-haired-girl-mayuri-shiina-steins-gate-anime-tutu-ru-music-gudi-manga-head.png'),
      ),
      navigateAfterSeconds: const MainView(),
    );
  }
}
