import 'package:flutter/material.dart';
import 'package:navi/ui/Homescreen/homescreen.dart';
import 'package:navi/ui/Places/places.dart';
import 'package:page_transition/page_transition.dart';
import 'infoCopy.dart';
import 'filter/filterScreen.dart';
import 'package:navi/ui/search/searchBar.dart';
import 'package:navi/ui/Navigation.dart';
import 'package:navi/ui/Saved/Saved.dart';
import 'package:navi/ui/myAccountScreen/Myaccount.dart';
import 'package:navi/ui/Loadingscreen/Loading.dart';
import 'package:navi/ui/Places/info.dart';



class events extends StatefulWidget {
  const events({super.key});

  @override
  State<events> createState() => _eventsState();
}

class _eventsState extends State<events> {
  
  static const String routeName ='/event-listing';
 // static Route route({required List<events> events})
  // {
   
  // }
  bool isLoading = false;
  @override
  Widget build(BuildContext context) =>  isLoading
      ? const Loading():
   

Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Stack(
          children: [
            MyNavigation(
              color1: Color.fromARGB(255, 0, 0, 0),
              press1: () {
                Navigator.push(context,
                    PageTransition(child: infoCard(), type: PageTransitionType.leftToRight));
              },
              color2: Color.fromARGB(255, 255, 85, 0),
              press2: () {},
              color3: Colors.black,
              press3: () {
                Navigator.push(
                    context, PageTransition(child: saved(), type: PageTransitionType.rightToLeft));
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
                margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
                color: Color.fromARGB(235, 250, 250, 250),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                        child: Text(
                          "Events",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                    Column(children: [
                      // info(
                      //   id: 1,
                      //   title: 'Comedy Night',
                      //   availibility: 'at B Dome Auditorium',
                      //   timings: 'From 7 to 9',
                      //   tags: ['Day','Comedy'],
                      // ),
                    ]),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
              alignment: Alignment.topLeft,
              child: ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 55, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))
                        ),
                
                child: Container(
                  width: 69,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.filter_list),
                      Text(
                        "Filters",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // onPressed: () {
                //   showDialog(
                //       context: context,
                //       builder: (BuildContext context) {
                //         return AlertDialog(
                //             content: Container(width: 410, child: filter()));
                //       });
                //},
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
                onPressed: () { 
                     Navigator.push(
                        context,
                        PageTransition(
                            child: homeScreen(),
                            type: PageTransitionType.topToBottom));
                  },
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
      ),
    );
  }

