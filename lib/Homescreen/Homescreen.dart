import 'package:flutter/material.dart';
import 'info.dart';
import 'package:navi/Events/events.dart';
import 'package:navi/My Account Screen/Myaccount.dart';
import 'package:navi/Navigation.dart';
import 'package:navi/search/searchBar.dart';
class infoCard extends StatelessWidget {
   int _selectIndex = 0;
 
  // void onTapped(int index) {
  //   setState() {
  //     _selectIndex = index;
  //   }

  //   ;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
              color: Color.fromARGB(235, 250, 250, 250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
            margin: EdgeInsets.fromLTRB(160, 0, 160, 10),
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
                  Text("Map",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                
                ],
              ),
              onPressed: () {},
            ),
          ),
         Container(
              height:30,
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Color.fromARGB(255, 187, 184, 184), ),
              alignment: Alignment.topCenter,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => searchPage()));
                },
                child: Row(
                  
                  children: [
                    Icon(Icons.search,color: Colors.black,),
                    Text("Search",
                    style: TextStyle(color: Colors.black,
                    fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
     bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Event'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        
        selectedItemColor: Color.fromARGB(255, 255, 82, 82),
        unselectedItemColor: Colors.black,
      ),
    );
  
  }}

