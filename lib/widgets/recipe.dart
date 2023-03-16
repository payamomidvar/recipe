import 'package:flutter/material.dart';

import 'package:timelines/timelines.dart';

import '../utils/constants.dart';

class Recipe extends StatelessWidget {
  final List<String> recipeList;

  const Recipe({required this.recipeList, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: tabBarViewBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: mediumPadding),
        child: ListView(
          children: [
            FixedTimeline.tileBuilder(
              theme: TimelineThemeData(color: Colors.green.shade900),
              builder: TimelineTileBuilder.connectedFromStyle(
                contentsAlign: ContentsAlign.alternating,
                lastConnectorStyle: ConnectorStyle.transparent,
                firstConnectorStyle: ConnectorStyle.transparent,
                oppositeContentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(largePadding),
                  child: Text(
                    '${index + 1}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
                contentsBuilder: (context, index) => Card(
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(mediumPadding),
                    child: Text(
                      recipeList[index],
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
                connectorStyleBuilder: (context, index) =>
                    ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                itemCount: recipeList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
