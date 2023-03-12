import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'Intro1.dart';
import 'Intro3.dart';
import 'package:navi/ui/Loadingscreen/Loading.dart';

class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) => isLoading
      ? const Loading()
      : Scaffold(
          body: Container(
            padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
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
                          fontSize: 32,
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
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 72, 0, 0),
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
                                                  BorderRadius.circular(32))),
                                      child: Text(
                                        'Previous',
                                        style: TextStyle(
                                          fontFamily: 'Lano',
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 238, 48, 0),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(
                                            context,
                                            PageTransition(
                                                child: Intro1(),
                                                type: PageTransitionType.fade));
                                      }),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 25.7),
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32))),
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
                                          PageTransition(
                                              child: Intro3(),
                                              type: PageTransitionType.fade));
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
                      Icon(
                        Icons.circle_rounded,
                        size: 17,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.white,
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
