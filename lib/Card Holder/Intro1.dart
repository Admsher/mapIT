import 'package:flutter/material.dart';
import 'Intro2.dart';

class Intro1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 105, 0, 0),
        color: Color.fromRGBO(33, 185, 22, 1),
        child: Column(
          children: [
            SizedBox(
              height: 350,
              width: 350,
              child: Stack(children: [
                Image.asset('assets/images/Component 15.png'),
                Container(
                    padding: EdgeInsets.fromLTRB(30, 25, 0, 0),
                    child: Image.asset('assets/images/Group 102.png'))
              ]),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(children: [
                  Text(
                    "We Provide you with the",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Exact Path Indoors",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  (Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 20, 0),
                      child: Column(children: [
                        Text(
                          "After taking input from you about the start and end location, we will provide you with the best route so that you can reach your destination hassle-free.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 57, 15, 0 ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Intro2()));
                                },
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
                                      color: Color.fromRGBO(33, 185, 22, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]))),
                ])),
          
          Container(
              padding:EdgeInsets.fromLTRB(0, 100, 0, 0  ) ,
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.white,
                  ),
                  Icon(Icons.circle_rounded),
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
