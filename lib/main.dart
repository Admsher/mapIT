
import 'package:flutter/material.dart';
import 'package:navi/Homescreen/Homescreen.dart';
import 'package:navi/cardHolder/IntroCard.dart';
import 'package:navi/myAccountScreen/Settings%20Screen/Settings.dart';
import 'Events/events.dart';
import 'darkMode/darkMode.dart';
import 'darkMode/change_theme_button_widget.dart';
// import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'First App',
    //   themeMode: ThemeMode.system,
    // theme: MyTheme.lightTheme,
    // darkTheme:MyTheme.darkTheme ,
      // debugShowCheckedModeBanner: false,
      home: IntroCard());
}}

