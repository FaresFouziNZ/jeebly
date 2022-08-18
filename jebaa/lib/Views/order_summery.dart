import 'package:flutter/material.dart';
import 'package:jebaa/Classes/food.dart';
import 'package:jebaa/Widgets/payment_widget.dart';
import 'package:jebaa/Widgets/summary_item.dart';
import 'package:jebaa/Widgets/summary_top.dart';

class OrderSummeryView extends StatefulWidget {
  final List<Food> allFoods;
  const OrderSummeryView({Key key, @required this.allFoods}) : super(key: key);

  @override
  State<OrderSummeryView> createState() => _OrderSummeryViewState();
}

class _OrderSummeryViewState extends State<OrderSummeryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summery'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const SummaryTopWidget(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const Text('Order'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Container(
            color: const Color(0xFFf9faff),
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Column(
                    children: widget.allFoods.map((e) => OrderSummaryItem(item: e)).toList(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: const Color(0xFFf9faff),
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.09,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        'Total: ',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        '\$' +
                            (widget.allFoods.map((e) => double.parse(e.price) * e.quantity).reduce((a, b) => a + b))
                                .toString(),
                        style: const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const PaymentWidget(),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          ElevatedButton(
            child: const Text('Place Order'),
            style: ElevatedButton.styleFrom(minimumSize: const Size(350, 50)),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                        title: const Text('Thank you'),
                        content: const Text('Your have registered'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                // Navigator.pop(context);
                                // Navigator.pushReplacement(
                                //     context, MaterialPageRoute(builder: (context) => const MainView()));
                              },
                              child: const Text('Ok'))
                        ],
                      ));
            },
          ),
        ],
      ),
    );
  }
}
