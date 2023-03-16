import 'package:flutter/material.dart';
import '../models/food.dart';
import '../screens/recipe_page.dart';
import '../utils/constants.dart';

import 'text_with_icon.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  const FoodCard({required this.food, Key? key}) : super(key: key);

  void onTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => RecipePage(food: food),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(context),
      child: Container(
        margin: const EdgeInsets.all(largeMargin),
        decoration: BoxDecoration(
          boxShadow: [boxShadow],
          borderRadius: const BorderRadius.all(
            Radius.circular(smallRadius),
          ),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.all(Radius.circular(smallRadius)),
              child: Image.asset(
                food.image,
                fit: BoxFit.cover,
                height: height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.all(mediumPadding),
                decoration:  BoxDecoration(
                color: Colors.white.withOpacity(opacity),
                  borderRadius: const BorderRadius.only(
                   bottomRight:  Radius.circular(smallRadius),
                   bottomLeft:  Radius.circular(smallRadius),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWithIcon(title:food.duration,icon: durationIcon),
                    Text(
                      food.title,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextWithIcon(title:food.rate.toString(),icon: rateIcon),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
