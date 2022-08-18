import 'package:flutter/material.dart';
import 'package:jebaa/Classes/food.dart';

import '../Widgets/summary_item.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({Key key, this.allFoods}) : super(key: key);

  final List<Food> allFoods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Container(
                color: const Color(0xFFf9faff),
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  children: allFoods.map((e) => OrderSummaryItem(item: e)).toList(),
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Cancel order'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
