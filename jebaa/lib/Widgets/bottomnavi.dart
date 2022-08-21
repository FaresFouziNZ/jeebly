import 'package:flutter/material.dart';
import 'package:jebaa/Views/main_page.dart';
import 'package:jebaa/Views/settings_page.dart';

class MyBottomNavigator extends StatefulWidget {
  const MyBottomNavigator({Key key, this.currentIndex}) : super(key: key);
  final int currentIndex;

  @override
  _MyBottomNavigatorState createState() => _MyBottomNavigatorState();
}

class _MyBottomNavigatorState extends State<MyBottomNavigator> {
  //int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      child: Container(
        width: double.infinity,
        height: 45,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Icon(
                Icons.home,
                color: widget.currentIndex == 0 ? Colors.white : Colors.black,
              ),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainView()));
              },
            ),
            GestureDetector(
              child: Icon(
                Icons.receipt,
                color: widget.currentIndex == 1 ? Colors.white : Colors.black,
              ),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const MainView()));
              },
            ),
            GestureDetector(
              child: Icon(
                Icons.person,
                color: widget.currentIndex == 2 ? Colors.white : Colors.black,
              ),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SettingsView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
