import 'package:flutter/material.dart';
import 'package:jebaa/Classes/trip.dart';

class TripCard extends StatefulWidget {
  // Trip trip;
  TripCard({Key key}) : super(key: key);

  @override
  _TripCardState createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
  Trip trip;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('sad');
      },
      child: Card(
        color: Colors.amberAccent,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Stack(alignment: Alignment.center, children: [
          const Image(
            image: AssetImage('assets/adasda.jpg'),
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Raid',
                    style: TextStyle(fontSize: 28),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Returning',
                    style: TextStyle(fontSize: 20),
                  ) //Restaurant name
                ],
              ),
              Column(
                children: const [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '19:30',
                    style: TextStyle(fontSize: 35),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Text('asd')
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
