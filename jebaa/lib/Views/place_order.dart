import 'package:flutter/material.dart';
import 'package:jebaa/Classes/trip.dart';
import 'package:jebaa/Widgets/item.dart';

class PlaceOrderView extends StatefulWidget {
  Trip trip;
  PlaceOrderView({Key key, this.trip}) : super(key: key);

  @override
  _PlaceOrderViewState createState() => _PlaceOrderViewState();
}

class _PlaceOrderViewState extends State<PlaceOrderView> {
  @override
  Widget build(BuildContext context) {
    //future builder to get the menu items from the database and display them in the list view
    return Scaffold(
      appBar: AppBar(
        title: const Text('Place Your Order'),
      ),
      body: ListView(
        children: [
          MenuItem(
            itemName: "Shawarma",
          ),
          MenuItem(
            itemName: "Pepsi",
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
