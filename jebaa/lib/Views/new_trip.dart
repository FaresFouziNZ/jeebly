import 'package:flutter/material.dart';
import 'package:jebaa/Classes/restaurant.dart';
import 'package:jebaa/Widgets/restaurantcard.dart';

class NewTripView extends StatefulWidget {
  const NewTripView({Key key}) : super(key: key);

  @override
  State<NewTripView> createState() => _NewTripViewState();
}

class _NewTripViewState extends State<NewTripView> {
  final List<Restaurant> _restaurants = [Restaurant(name: 'raiq'), Restaurant(name: 'raiq2')];
  TimeOfDay _time = TimeOfDay.now();
  String selectedRestaurant = '';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              child: SizedBox(
                //decoration: BoxDecoration(border: Border.all(width: 1)),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Wrap(
                      children: List.generate(_restaurants.length, (index) {
                        return RestaurantCard(
                          isSelected: selectedRestaurant == _restaurants[index].name,
                          restaurant: _restaurants[index],
                          onTap: () {
                            setState(() {
                              selectedRestaurant = _restaurants[index].name;
                              print(selectedRestaurant);
                            });
                          },
                        );
                      }),
                    )
                    // GestureDetector(
                    //   child: RestaurantCard(
                    //     restaurant: Restaurant(name: 'raiq'),
                    //   ),
                    // ),
                    // GestureDetector(
                    //   child: RestaurantCard(
                    //     restaurant: Restaurant(name: 'raiq'),
                    //   ),
                    // ),
                    // RestaurantCard(
                    //   restaurant: Restaurant(name: 'raiq'),
                    // ),
                    // RestaurantCard(
                    //   restaurant: Restaurant(name: 'raiq'),
                    // ),
                    // RestaurantCard(
                    //   restaurant: Restaurant(name: 'raiq'),
                    // ),
                  ],
                ),
                //color: Colors.grey[300],
                width: 350,
                height: 110,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Icon(Icons.calendar_today_rounded),
                  ),
                  GestureDetector(
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      //color: Colors.green[50],
                      child: Center(
                          child: Text(
                        _time?.format(context),
                        style: const TextStyle(fontSize: 30),
                      )),
                    ),
                    onTap: () async {
                      _time = await showTimePicker(context: context, initialTime: _time);
                      setState(() {});
                    },
                  )
                ],
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
