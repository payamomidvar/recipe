import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double largePadding = 10.0;
const double mediumPadding = 5.0;

const double largeMargin = 10;

const double smallRadius = 5.0;
const double mediumRadius = 20.0;


const double opacity = 0.6;

const double height = 200;
const double width = 10;

const double smallIcon = 12;
const double mediumIcon = 20;
const Icon rateIcon = Icon(
  FontAwesomeIcons.solidStar,
  color: Colors.amber,
  size: smallIcon,
);
const Icon durationIcon = Icon(
  FontAwesomeIcons.clock,
  size: smallIcon,
);

final BoxShadow boxShadow = BoxShadow(
  color: Colors.grey.shade900,
  blurRadius: 5,
  offset: const Offset(0, 1), // Shadow position
);

const Color tabBarViewBackgroundColor = Color(0xFFF5F5F5);

