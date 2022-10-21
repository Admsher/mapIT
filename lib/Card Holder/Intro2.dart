import 'package:flutter/material.dart';
import 'Intro1.dart';
import 'Intro3.dart';

class Intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        color: Color.fromARGB(255, 238, 48, 0),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Column(children: [
                  SizedBox(
                    height: 350,
                    width: 350,
                    child: Stack(children: [
                      Image.asset('assets/images/Component 142.png'),
                      Container(
                          padding: EdgeInsets.fromLTRB(30, 75, 0, 0),
                          child: Image.asset(
                              'assets/images/Dining Out Heroes WeirdoWizard danielsouza.png'))
                    ]),
                  ),
                  Text(
                    "We notify you about the",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Upcoming Events",
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
                          "We will keep you updated about all the live and upcoming events so that you dont miss it.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 74, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      color: Color.fromARGB(255, 238, 48, 0),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Intro1()));
                                  }),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 60, vertical: 25.7),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12))),
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    fontFamily: 'Lano',
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 238, 48, 0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Intro3()));
                                },
                              ),
                            ],
                          ),
                        )
                      ]))),
                ])),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle_rounded),
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.white,
                  ),
                  Icon(Icons.circle_rounded)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
