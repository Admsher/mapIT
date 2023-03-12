import 'package:flutter/material.dart';
import 'Intro2.dart';
import 'package:navi/ui/Homescreen/homescreen.dart';
import 'package:navi/ui/Navigation.dart';
import 'package:navi/main.dart';
import 'package:navi/services/firebas_auth_service.dart';
// import 'package:provider/provider.dart';
import 'package:navi/ui/Homescreen/homescreen.dart';
import 'package:navi/ui/Loadingscreen/Loading.dart';
import 'package:navi/ui/Places/places.dart';
import 'package:navi/ui/Homescreen/homescreen.dart';

class Intro3 extends StatefulWidget {
  const Intro3({super.key});

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  bool isLoading = false;

  // ChangeNotifierProvider(
  //   create: (context) =>GoogleSignInProvider(),
  @override
  Widget build(BuildContext context) => isLoading
      ? const Loading()
      : Scaffold(
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
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "Help You Navigate",
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
                              "In order that we are able to serve you properly, we will be requiring some permissions so that you can navigate without any inconvenience and stay updated about what is happening in your surroundings.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 57, 0, 0),
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
                                                    BorderRadius.circular(32))),
                                        child: Text(
                                          'Previous',
                                          style: TextStyle(
                                            fontFamily: 'Lano',
                                            fontSize: 20,
                                            color:
                                                Color.fromARGB(255, 78, 89, 78),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Intro2()));
                                        },
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 60, vertical: 25.5),
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(32))),
                                        child: Text(
                                          'Done',
                                          style: TextStyle(
                                            fontFamily: 'Lano',
                                            fontSize: 20,
                                            color:
                                                Color.fromARGB(255, 78, 89, 78),
                                          ),
                                        ),
                                        onPressed: () async {
                                          // final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                                          //     provider.googleLogin();

                                          Notification settings =
                                              await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          homeScreen()));
                                        },
                                      ),
                                    ],
                                  ),
                                )),
                          ]))),
                    ])),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.fromLTRB(0, 22, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        size: 17,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        size: 17,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.white,
                        size: 17,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
}
