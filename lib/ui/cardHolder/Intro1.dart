

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'Intro2.dart';
import 'package:navi/ui/Loadingscreen/Loading.dart';

class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) => isLoading
      ? const Loading()
      : Scaffold(
          body: Container(
            padding: EdgeInsets.fromLTRB(0, 80, 0, 40),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
                        child: Text(
                          "Exact Path Indoors",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      (Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 20, 0),
                          child: Column(children: [
                            Text(
                              "After taking input from you about the start and end location, we will provide you with the best route so that you can reach your destination hassle-free.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 57, 15, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Intro2(),
                                              type: PageTransitionType.fade));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 63, vertical: 25.7),
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(64))),
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                          fontFamily: 'Lano',
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(33, 185, 22, 1)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]))),
                    ])),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.white,
                        size: 17,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        size: 17,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        size: 17,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
}
