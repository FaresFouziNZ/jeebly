import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jebaa/Classes/trip.dart';
import 'package:jebaa/Database/database.dart';
import 'package:jebaa/Views/order_summery.dart';
import 'package:jebaa/Widgets/item.dart';

import '../Classes/food.dart';

class PlaceOrderView extends StatefulWidget {
  final Trip trip;
  final bool isDriver;
  const PlaceOrderView({Key key, this.trip, @required this.isDriver}) : super(key: key);

  @override
  _PlaceOrderViewState createState() => _PlaceOrderViewState();
}

class _PlaceOrderViewState extends State<PlaceOrderView> {
  var allFoods = [];
  List<Food> selectedFoods = [];

  callBack(Food newItem) {
    if (newItem != null) {
      for (int i = 0; i < selectedFoods.length; i++) {
        if (selectedFoods[i].name == newItem.name) {
          selectedFoods.removeAt(i);
          break;
        }
      }
      if (newItem.quantity != 0) {
        selectedFoods.add(newItem);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DatabaseService().getFoods(widget.trip.destination),
      builder: (context, snapshot) {
        allFoods = snapshot.data;
        if (snapshot.connectionState != ConnectionState.done) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Place Your Order'),
            ),
            body: const Center(
              child: SpinKitPulse(
                color: Colors.blue,
                size: 50,
              ),
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text('Place Your Order'),
          ),
          body: ListView(
            children: allFoods
                .map((e) => MenuElement(
                      item: e,
                      callBack: callBack,
                    ))
                .toList(),
          ),
          floatingActionButton: FloatingActionButton(
            heroTag: 'placeOrder',
            onPressed: () {
              if (selectedFoods.isEmpty) {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Please Select Food'),
                    actions: [
                      ElevatedButton(
                        child: const Text('Ok'),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                );
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderSummeryView(
                              allFoods: selectedFoods,
                            )));
              }
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
