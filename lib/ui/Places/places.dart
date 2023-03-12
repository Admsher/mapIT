import 'package:flutter/material.dart';
import 'package:navi/ui/Homescreen/Homescreen.dart';
import 'package:page_transition/page_transition.dart';
import 'info.dart';
import 'package:navi/ui/Events/events.dart';
import 'package:navi/ui/myAccountScreen/Myaccount.dart';
import 'package:navi/ui/Navigation.dart';
import 'package:navi/ui/search/searchBar.dart';
import 'package:navi/ui/Saved/Saved.dart';
import 'package:navi/ui/Loadingscreen/Loading.dart';

class infoCard extends StatefulWidget {
  const infoCard({super.key});

  @override
  State<infoCard> createState() => _infoCard();
}

class _infoCard extends State<infoCard> {
  bool isLoading = false;
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) => isLoading
      ? const Loading()
      : Scaffold(
          body: Stack(
            children: [
              Container(
                child: MyNavigation(
                  color1: Color.fromARGB(255, 255, 85, 0),
                  press1: () {},
                  color2: Colors.black,
                  press2: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: events(),
                           type: PageTransitionType.rightToLeft));
                  },
                  color3: Colors.black,
                  press3: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: saved(),
                            type: PageTransitionType.rightToLeft));
                  },
                  color4: Colors.black,
                  press4: () {},
                  color5: Colors.black,
                  press5: (() {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: ProfileScreen(),
                            type: PageTransitionType.rightToLeft));
                  }),
                ),
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
                                "Recommended Places",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                      Column(children: [
                        info(
                            title: 'RED CHILLIES',
                            availibility: 'Closed',
                            timings: '||Opens 4:00pm',
                            typeOfDining: 'Dining||Takeaway'),
                      ]),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(160, 0, 160, 50),
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
                  onPressed: () {
                     Navigator.push(
                        context,
                        PageTransition(
                            child: homeScreen(),
                            type: PageTransitionType.topToBottom));
                  }
                  
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
          ),
        );
}
