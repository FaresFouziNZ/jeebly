import 'package:flutter/material.dart';
import 'package:jebaa/Classes/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final Function onTap;
  final bool isSelected;
  const RestaurantCard({Key key, @required this.restaurant, this.onTap, this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
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
            Text(
              'Raiq',
              style: TextStyle(fontSize: 20, color: isSelected ? Colors.red : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
