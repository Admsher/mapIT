import 'package:flutter/material.dart';
import 'package:navi/ui/Navigation.dart';
import 'package:navi/ui/Homescreen/homescreen.dart';
import 'package:navi/ui/Events/events.dart';
import 'package:navi/ui/Places/places.dart';
import 'package:navi/ui/myAccountScreen/Myaccount.dart';
import 'package:navi/ui/search/searchBar.dart';
import 'package:page_transition/page_transition.dart';
import "package:navi/ui/Loadingscreen/Loading.dart";
import 'package:navi/ui/Places/info.dart';


class saved extends StatefulWidget {
  const saved({super.key});

  @override
  State<saved> createState() => _savedState();
}

class _savedState extends State<saved> {
  bool isLoading  = false;
  @override
  Widget build(BuildContext context) =>  isLoading
      ? const Loading():
          
       Stack(
         children: [
          
           MyNavigation(
                  color1: Color.fromARGB(255, 0, 0, 0),
                  press1: () {
                    Navigator.push(context,
                        PageTransition
                       (child: infoCard(), type: PageTransitionType.leftToRight));
                  },
                  color2: Colors.black,
                  press2: () {
                    Navigator.push(
                        context, PageTransition(child: events(), type: PageTransitionType.leftToRight));
                  },
                  color3:Color.fromARGB(255, 255, 85, 0),
                  press3: () {
                    
                  },
                  color4: Colors.black,
                  press4: () {},
                  color5: Colors.black,
                  press5: (() {
                    Navigator.push(context,
                        PageTransition(child: ProfileScreen(), type: PageTransitionType.rightToLeft));
                  }),
                ),
                
                SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                  color: Color.fromARGB(235, 250, 250, 250),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                              child: Text(
                                "Saved",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                      Column(children: [
                        
                      ]),
                    ],
                  ),
                ),
              ),
                Container(
              margin: EdgeInsets.fromLTRB(150, 0, 150, 40),
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 55, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.map),
                    Text(
                      "Map",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
                Container(
            
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                alignment: Alignment.topCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => searchPage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                       Row(
                         children: [
                           Icon(
                            Icons.search,
                            color: Colors.black,
                      ),
                      CircleAvatar(radius: 13,)
                         ],
                       ),
                    ],
                  ),
                ),
              ),
         ],
       );
    
  }
