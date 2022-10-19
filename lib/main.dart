import 'package:flutter/material.dart';
import 'package:navi/My%20Account%20Screen/Settings%20Screen/Settings.dart';
import "Card Holder/IntroCard.dart";
import 'My Account Screen/Myaccount.dart';
import 'My Account Screen/Trips/Trips.dart';
import 'Loading screen/Loading.dart';
import 'Homescreen/Homescreen.dart';
import 'Events/events.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      debugShowCheckedModeBanner: false,
      home: ProfileScreen());
}}
