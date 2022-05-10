import 'package:flutter/material.dart';
import 'package:jebaa/Classes/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final Function onTap;
  const RestaurantCard({Key key, @required this.restaurant, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Card(
                color: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset('assets/raiq_logo.png')),
              ),
            ),
            const Text(
              'Raiq',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
