import 'package:flutter/material.dart';
import 'package:jebaa/Control/bottomnavi.dart';
import 'package:jebaa/Control/tripcard.dart';

class MainView extends StatefulWidget {
  const MainView({Key key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('wg'),
      ),
      body: Center(
        child: Column(
          children: [TripCard(), TripCard()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            const AlertDialog(
              title: Text(''),
            );
          }),
      bottomNavigationBar: const MyBottomNavigator(),
    );
  }
}
