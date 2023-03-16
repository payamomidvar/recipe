import 'package:flutter/material.dart';

import '../utils/constants.dart';

class TextWithIcon extends StatelessWidget {
  final String title;
  final Icon icon;

  const TextWithIcon({required this.title, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(mediumPadding),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          icon,
        ],
      ),
    );
  }
}
