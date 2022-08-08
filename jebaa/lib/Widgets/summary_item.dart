import 'package:flutter/material.dart';

import '../Classes/food.dart';

class OrderSummaryItem extends StatefulWidget {
  final Food item;

  const OrderSummaryItem({Key key, this.item}) : super(key: key);
  @override
  State<OrderSummaryItem> createState() => _OrderSummaryItemState();
}

class _OrderSummaryItemState extends State<OrderSummaryItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.66,
          height: 50,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 20,
                  width: 20,
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      widget.item.quantity.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                widget.item.name,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$' + (double.parse(widget.item.price) * widget.item.quantity).toStringAsFixed(2),
                    style: const TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
      ],
    );
  }
}
