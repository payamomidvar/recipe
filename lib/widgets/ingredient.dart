import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/constants.dart';

class Ingredient extends StatelessWidget {
  final List<String> ingredientList;

  const Ingredient({required this.ingredientList, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: tabBarViewBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: mediumPadding),
        child: ListView(
          children: [
            ...ingredientList
                .map(
                  (element) => Padding(
                padding: const EdgeInsets.all(mediumPadding),
                child: Row(
                  children: [
                    const Icon(FontAwesomeIcons.circleCheck),
                    const SizedBox(width: width),
                    Text(
                      element,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            )
                .toList(),
          ],
        ),
      ),
    );
  }
}
