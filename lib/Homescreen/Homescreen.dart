import 'package:flutter/material.dart';
import 'info.dart';

class infoCard extends StatelessWidget {
  int _selectedIndex = 0;

  void onTapped(int index) {
    setState() {
      _selectedIndex = index;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                        title: 'RED CHILLIES',
                        availibility: 'Closed',
                        timings: '||Opens 4:00pm',
                        typeOfDining: 'Dining||Takeaway'),
                    info(
                        title: 'RED CHILLIES',
                        availibility: 'Closed',
                        timings: '||Opens 4:00pm',
                        typeOfDining: 'Dining||Takeaway'),
                    info(
                        title: 'RED CHILLIES',
                        availibility: 'Closed',
                        timings: '||Opens 4:00pm',
                        typeOfDining: 'Dining||Takeaway'),
                    info(
                        title: 'RED CHILLIES',
                        availibility: 'Closed',
                        timings: '||Opens 4:00pm',
                        typeOfDining: 'Dining||Takeaway'),
                    info(
                        title: 'RED CHILLIES',
                        availibility: 'Closed',
                        timings: '||Opens 4:00pm',
                        typeOfDining: 'Dining||Takeaway'),
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
                  Text("Map",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                Icon(Icons.pin_drop)
                ],
              ),
              onPressed: () {},
            ),
          )
        ],
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
