import 'package:flutter/material.dart';
import 'infoCopy.dart';
import 'filter/filterScreen.dart';
class events extends StatelessWidget {
  int _selectedIndex = 1;

  void onTapped(int index) {
    setState() {
      _selectedIndex = index;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child:
      Stack(
       
        children: [
          
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
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
                    info(
                        title: 'Comedy Night',
                        availibility: 'at B Dome Auditorium',
                        timings: 'From 7 to 9',
                        typeOfDining: '',),
                  
                  ]),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
            alignment: Alignment.topLeft,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 55, 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: Text(
                "Filters",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => filter()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(150, 0, 150, 10),
            padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
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
          )
        ],
      ),),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Event'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
