// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'profileMenu.dart';
import 'Trips/Trips.dart';

class profilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser!;
    return Container(
      color: Color.fromARGB(255, 237, 47, 5),
      margin: EdgeInsets.fromLTRB(16, 95, 16, 0),
      child: Stack(
        children: [
          Container(
              alignment: Alignment.bottomCenter,
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(0, 134, 0, 0),
              padding: EdgeInsets.fromLTRB(105, 0, 105, 140)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Card(
                  child: SizedBox(
                      width: 350,
                      height: 198,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '',
                                        // '' +user.displayName!,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '',
                                    // ''+user.email!,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                      child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        TripPage()));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 40, vertical: 20),
                                            backgroundColor: Color.fromARGB(255, 145, 141, 141),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.hiking_rounded,
                                                color: Colors.black,
                                              ),
                                              Text(
                                                'Trips',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 40, vertical: 20),
                                            backgroundColor: Color.fromARGB(255, 134, 130, 130),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.share_location,
                                                color: Colors.black,
                                              ),
                                              Text(
                                                'Share',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Lato",
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                          ])),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            alignment: Alignment.topCenter,
            child: const CircleAvatar(
              radius: 40,
            //  backgroundImage: NetworkImage(user.photoURL!),
            ),
          ),
        ],
      ),
    );
  }
}
