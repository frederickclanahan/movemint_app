
import 'package:flutter/material.dart';

// Color Constants
const kMintGreen = Color(0xFF00C48C);
const kDarkBackground = Color(0xFF121212);
const kCardColor = Color(0xFF1E1E1E);
const kAppBarColor = Colors.black;
const kTileRadius = Radius.circular(15);

// MoveMint Dark Theme
final ThemeData MoveMintDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kMintGreen,
  scaffoldBackgroundColor: kDarkBackground,
  cardColor: kCardColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: kAppBarColor,
    foregroundColor: Colors.white,
    elevation: 4,
    titleTextStyle: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.white,
    ),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    bodyText1: TextStyle(fontSize: 18, color: Colors.white),
    bodyText2: TextStyle(fontSize: 16, color: Colors.white70),
    subtitle1: TextStyle(fontSize: 14, color: Colors.white60),
    caption: TextStyle(fontSize: 12, color: Colors.white38),
    button: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kMintGreen,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  ),
  cardTheme: const CardTheme(
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  ),
);

// Starter Light Theme (WIP)
final ThemeData MoveMintLightTheme = ThemeData.light().copyWith(
  primaryColor: kMintGreen,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  ),
);
