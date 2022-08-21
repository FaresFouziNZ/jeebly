import 'package:flutter/material.dart';
import 'package:jebaa/Classes/trip.dart';
import 'package:jebaa/Widgets/bottomnavi.dart';
import 'package:jebaa/Widgets/tripcard.dart';
import 'package:jebaa/Views/new_trip.dart';

class MainView extends StatefulWidget {
  const MainView({Key key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                // child: Text(
                //   'Home',
                //   style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                // ),
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
              Column(
                children: [
                  TripCard(
                    trip: Trip(
                      destination: 'Raiq',
                      isClosed: 'O P E N',
                    ),
                  ),
                  TripCard(
                      trip: Trip(
                    destination: 'raid',
                    isClosed: 'P E N G U I N',
                  )),
                  TripCard(
                      trip: Trip(
                    destination: 'raid',
                    isClosed: 'C O M P L E T E',
                  ))
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            heroTag: 'newTrip',
            // backgroundColor: Colors.transparent,
            //  shape: const RoundedRectangleBorder(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              // child: Image.asset(
              //     'assets/png-clipart-gray-haired-girl-mayuri-shiina-steins-gate-anime-tutu-ru-music-gudi-manga-head.png'),
            ),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => NewTripView()),
              // );
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return const SingleChildScrollView(
                      child: NewTripView(),
                    );
                  });
            }),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const MyBottomNavigator(currentIndex: 0),
      ),
    );
  }
}
