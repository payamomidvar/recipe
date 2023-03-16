import 'package:flutter/material.dart';

import '../models/nutrition.dart';
import '../utils/constants.dart';

class NutritionBuilder extends StatelessWidget {
  final List<Nutrition> nutritionList;

  const NutritionBuilder({required this.nutritionList, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: tabBarViewBackgroundColor,
      child: GridView.count(
        padding: const EdgeInsets.all(largePadding),
        shrinkWrap: true,
        primary: false,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 3,
        children: [
          ...nutritionList
              .map(
                (item) => nutritionItem(item, context),
              )
              .toList(),
        ],
      ),
    );
  }

  Widget nutritionItem(final Nutrition nutrition, final BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: largePadding, vertical: mediumPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [boxShadow],
        borderRadius: const BorderRadius.all(Radius.circular(smallRadius)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            nutrition.criterion,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          CircleAvatar(
            radius: mediumRadius,
            backgroundColor: Colors.white,
            child: Text(nutrition.value.toString(),
                style: Theme.of(context).textTheme.bodyMedium),
          ),
          Text(
            nutrition.unit.name(),
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
