import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../utils/constants.dart';
import '../widgets/food_card.dart';

class FoodListPage extends StatelessWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: mediumPadding),
            child: Text('Food Recipes'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(largePadding),
          child: ListView(
            children: [
              ...foods.map((food) => FoodCard(food: food)).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
