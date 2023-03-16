import 'package:flutter/material.dart';

final theme = ThemeData(
  primaryColor: Colors.green.shade900,
  scaffoldBackgroundColor: const Color(0xFFF5F5F5),
  iconTheme: IconThemeData(color: Colors.green.shade900, size: 16),
  appBarTheme:  AppBarTheme(
    backgroundColor: const Color(0xFFF5F5F5),
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.green.shade900),
    titleTextStyle: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 17,
      fontWeight: FontWeight.bold,
      fontFamily: 'VazirRegular',
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontFamily: 'VazirRegular',
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontSize: 11,
      fontFamily: 'VazirRegular',
    ),
    labelMedium: TextStyle(
      color: Colors.white,
      fontSize: 11,
      fontFamily: 'VazirRegular',
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    iconSize: 16,
    backgroundColor: Colors.green.shade900,
  ),
  tabBarTheme: TabBarTheme(
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: Colors.green.shade900, width: 2),
    ),
    labelColor: Colors.green.shade900,
    unselectedLabelColor: Colors.green.shade200,
  ),
);
