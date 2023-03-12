import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:navi/services/firebas_auth_service.dart';
import 'package:navi/ui/Homescreen/homescreen.dart';
import 'package:navi/ui/cardHolder/IntroCard.dart';
import 'package:navi/ui/myAccountScreen/Myaccount.dart';
import 'package:navi/ui/myAccountScreen/Settings%20Screen/Settings.dart';
import 'ui/Events/events.dart';
import 'ui/darkMode/darkMode.dart';
import 'ui/darkMode/change_theme_button_widget.dart';
// import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
  // FirebaseMessaging.instance
  //     .getToken();
     //run the app and get the token from debug console

    
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'First App',
        //   themeMode: ThemeMode.system,
        // theme: MyTheme.lightTheme,
        // darkTheme:MyTheme.darkTheme,
        // debugShowCheckedModeBanner: false,
        home: homeScreen());
    
  }
}
