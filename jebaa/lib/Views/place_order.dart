import 'package:flutter/material.dart';
import 'package:jebaa/Classes/trip.dart';
import 'package:jebaa/Database/database.dart';
import 'package:jebaa/Widgets/item.dart';

class PlaceOrderView extends StatefulWidget {
  Trip trip;
  PlaceOrderView({Key key, this.trip}) : super(key: key);

  @override
  _PlaceOrderViewState createState() => _PlaceOrderViewState();
}

class _PlaceOrderViewState extends State<PlaceOrderView> {
  var allFoods = [];

  callBack() {
    setState(() {});
  }

  var selectedFoods = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DatabaseService().getFoods(widget.trip.destination),
      builder: (context, snapshot) {
        allFoods = snapshot.data;
        if (snapshot.connectionState != ConnectionState.done) {
          return const Scaffold(
            body: Center(child: Text('Loading')),
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
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
