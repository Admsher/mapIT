import 'dart:html';
import 'package:flutter/material.dart';
import 'package:navi/Card%20Holder/IntroCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      debugShowCheckedModeBanner: false,
      home: IntroCard());
}}

