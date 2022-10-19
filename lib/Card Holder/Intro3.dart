import 'package:flutter/material.dart';
import 'Intro2.dart';

class Intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        color: Color.fromARGB(255, 78, 89, 78),
        child: Column(
          children: [
            SizedBox(
              height: 350,
              width: 350,
              child: Stack(children: [
                Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset('assets/images/Component 14.png')),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 57, 0, 0),
                    child: Image.asset('assets/images/day64followers.png'))
              ]),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(children: [
                  Text(
                    "We need some permissions to",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Help You Navigate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  (Container(
                      margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: Column(children: [
                        Text(
                          "In order that we are able to serve you properly, we will be requiring some permissions so that you can navigate without any inconvenience and stay updated about what is happening in your surroundings.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
                            child: GestureDetector(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 25.5),
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12))),
                                    child: Text(
                                      'Previous',
                                      style: TextStyle(
                                        fontFamily: 'Lano',
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 78, 89, 78),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Intro2()));
                                    },
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 25.5),
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12))),
                                    child: Text(
                                      'Done',
                                      style: TextStyle(
                                        fontFamily: 'Lano',
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 78, 89, 78),
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            )),
                      ]))),
                ])),
            Container(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle_rounded),
                  Icon(Icons.circle_rounded),
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.white,
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
