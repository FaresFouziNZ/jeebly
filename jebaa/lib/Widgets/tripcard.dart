import 'package:flutter/material.dart';
import 'package:jebaa/Classes/trip.dart';
import 'package:jebaa/Views/place_order.dart';

class TripCard extends StatefulWidget {
  final Trip trip;
  const TripCard({Key key, @required this.trip}) : super(key: key);

  @override
  _TripCardState createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
  Color s() {
    if (widget.trip.isClosed == 'O P E N') {
      return Colors.green;
    }
    if (widget.trip.isClosed == 'P E N G U I N') {
      return Colors.amber;
    }
    if (widget.trip.isClosed == 'C O M P L E T E') {
      return Colors.grey;
    }
    return Colors.pinkAccent;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlaceOrderView(
                      isDriver: false,
                      trip: widget.trip,
                    )));
      },
      child: SizedBox(
        height: 118,
        width: 352,
        child: Card(
          semanticContainer: true,
          //shadowColor: Colors.red,
          color: s(),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Stack(alignment: Alignment.center, children: [
            Image.asset('assets/raiq.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.trip.destination,
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Text('          Time:      ', style: TextStyle(color: Colors.white)),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '19:30',
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        )
                      ],
                    ) //Restaurant name
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    Text(widget.trip.isClosed, style: const TextStyle(fontSize: 16))
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
