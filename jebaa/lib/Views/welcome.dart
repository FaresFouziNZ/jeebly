import 'package:flutter/material.dart';
import 'package:jebaa/Classes/local_user.dart';
import 'package:jebaa/Views/main_page.dart';
import 'package:jebaa/Views/signin.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Widget navigateAfterSec() {
    if (Provider.of<LocalUser>(context, listen: false) != null) {
      return const MainView();
    } else {
      return const SignInView();
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<LocalUser>(context);
    return Provider.value(
      value: 0,
      child: SplashScreen(
        backgroundColor: Colors.black54,
        image: const Image(
          image: AssetImage(
              'assets/png-clipart-gray-haired-girl-mayuri-shiina-steins-gate-anime-tutu-ru-music-gudi-manga-head.png'),
        ),
        seconds: 4,
        navigateAfterSeconds: navigateAfterSec(),
      ),
    );
  }
}
