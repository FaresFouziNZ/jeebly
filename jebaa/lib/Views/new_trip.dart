import 'package:flutter/material.dart';
import 'package:jebaa/Classes/restaurant.dart';
import 'package:jebaa/Control/restaurantcard.dart';

class NewTripView extends StatelessWidget {
  NewTripView({Key key}) : super(key: key);
  TimeOfDay _time = const TimeOfDay(hour: 12, minute: 12);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // appBar: AppBar(
      //   title: const Text('New Trip'),
      // ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: Text(
                    'Restaurants',
                    style: TextStyle(fontSize: 24),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //decoration: BoxDecoration(border: Border.all(width: 1)),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    RestaurantCard(
                      restaurant: Restaurant(name: 'raiq'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    RestaurantCard(
                      restaurant: Restaurant(name: 'raiq'),
                    ),
                  ],
                ),
                color: Colors.grey[300],
                width: 350,
                height: 110,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: Icon(Icons.calendar_today_rounded),
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      //color: Colors.green[50],
                      child: Center(
                          child: Text(
                        _time.format(context),
                        style: const TextStyle(fontSize: 30),
                      )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(minimumSize: const Size(350, 50)),
                  child: const Text('Place the Trip!')),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
