import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.system;

bool get isDarkmode => themeMode == ThemeMode.dark;
void toggleTheme(bool isOn){
  themeMode=isOn?ThemeMode.dark:ThemeMode.light;
  notifyListeners();
}


}
class MyTheme {
 
    static final darkTheme =ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade900,
      colorScheme: ColorScheme.dark(),
      primaryColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
      indicatorColor: Colors.white
    );
     static final lightTheme =ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
      primaryColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      indicatorColor: Colors.black
    );


  
  



}
