import 'package:flutter/material.dart';

class MyBottomNavigator extends StatefulWidget {
  const MyBottomNavigator({Key key}) : super(key: key);

  @override
  _MyBottomNavigatorState createState() => _MyBottomNavigatorState();
}

class _MyBottomNavigatorState extends State<MyBottomNavigator> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: _currentIndex,
      onTap: (_index) => setState(() => _currentIndex = _index),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.receipt), label: "rec"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "set"),
      ],
    );
  }
}
