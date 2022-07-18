import 'package:flutter/material.dart';
import 'package:jebaa/Classes/trip.dart';
import 'package:jebaa/Widgets/bottomnavi.dart';
import 'package:jebaa/Widgets/tripcard.dart';
import 'package:jebaa/Views/new_trip.dart';

class MainView extends StatefulWidget {
  List<Trip> trips;
  MainView({Key key, @required this.trips}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Home',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'T R I P S',
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              TripCard(
                trip: Trip(
                  destination: 'raid',
                  status: 'O P E N',
                ),
              ),
              TripCard(
                  trip: Trip(
                destination: 'raid',
                status: 'P E N G U I N',
              )),
              TripCard(
                  trip: Trip(
                destination: 'raid',
                status: 'C O M P L E T E',
              ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.grey[100],
            shape: const RoundedRectangleBorder(),
            child: Image.asset(
                'assets/png-clipart-gray-haired-girl-mayuri-shiina-steins-gate-anime-tutu-ru-music-gudi-manga-head.png'),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => NewTripView()),
              // );
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                      child: NewTripView(),
                    );
                  });
            }),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const MyBottomNavigator(),
      ),
    );
  }
}
