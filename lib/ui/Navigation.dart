import 'package:flutter/material.dart';
import 'Homescreen/homescreen.dart';
import 'myAccountScreen/Myaccount.dart';
import 'Events/events.dart';

class MyNavigation extends StatelessWidget {
  MyNavigation({
    Key? key,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.color5,
    required this.press1,
    required this.press2,
    required this.press3,
    required this.press4,
    required this.press5,
  }) : super(key: key);
  final Color color1, color2, color3, color4, color5;
  final VoidCallback press1, press2, press3, press4, press5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: 
                  press1,
                
                child: Column(
                  children: [
                    Icon(
                      Icons.pin_drop,
                      color: color1,
                    ),
                    Text("Places",
                    style: TextStyle(color: Colors.black),),

                  ],
                ),
              ),
              TextButton(
                onPressed:
                  press2,
                
                child: Column(
                  children: [
                    Icon(
                      Icons.event,
                      color: color2,
                    ),
                    Text("Events",
                    style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
              TextButton(
                onPressed: 
                  press3,
                
                child: Column(
                  children: [
                    Icon(
                      Icons.bookmark,
                      color: color3,
                    ),
                    Text("Saved",
                    style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
              TextButton(
                onPressed: 
                  press4,
                
                child: Column(
                  children: [
                    Icon(
                      Icons.newspaper,
                      color: color4,
                    ),
                    Text("News",
                    style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
              TextButton(
                onPressed: press5,
                
                child: Column(
                  children: [
                    Icon(
                      Icons.person_pin,
                      color: color5,
                    ),
                    Text("Account",
                    style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
