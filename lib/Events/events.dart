import 'package:flutter/material.dart';
import 'infoCopy.dart';
import 'filter/filterScreen.dart';
import 'package:navi/search/searchBar.dart';

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
        child: Stack(
          children: [
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
                      info(
                        title: 'Comedy Night',
                        availibility: 'at B Dome Auditorium',
                        timings: 'From 7 to 9',
                        typeOfDining: '',
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
              alignment: Alignment.topLeft,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 55, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: Container(
                  width: 65,
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
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            content: Container(width: 410, child: filter()));
                      });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(150, 0, 150, 10),
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
      ),
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
