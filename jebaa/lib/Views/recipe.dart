import 'package:flutter/material.dart';
import 'package:jebaa/Classes/food.dart';
import 'package:jebaa/Widgets/appbar.dart';

import '../Widgets/summary_item.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({Key key, this.allFoods}) : super(key: key);

  final List<Food> allFoods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarC(title: 'Recipe'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Raiq',
                    style: TextStyle(fontSize: 32),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xFFf9faff),
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.33,
              child: Column(
                children: allFoods.map((e) => OrderSummaryItem(item: e)).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                color: const Color(0xFFf9faff),
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.33,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(140, 15, 0, 0),
                      child: Image.asset(
                        'assets/BankLogo/Inma.png',
                        width: 125,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton(
                  child: const Text('Edit Order'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    minimumSize: MaterialStateProperty.all(const Size.fromRadius(25)),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton(
                  child: const Text('Cancel order'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    minimumSize: MaterialStateProperty.all(const Size.fromRadius(25)),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
