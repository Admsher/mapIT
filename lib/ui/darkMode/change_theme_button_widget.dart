// import 'package:flutter/material.dart';
// import 'darkMode.dart';
// import "package:provider/provider.dart";

// class changeThemeButtonWidget extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     final themeProvider = Provider.of<ThemeProvider>(context);

//     return Switch.adaptive(value: themeProvider.isDarkmode, onChanged:((value) {
//       final provider=Provider.of<ThemeProvider>(context,listen:false);
//       provider.toggleTheme(value);
//     }) );
//   }
// }