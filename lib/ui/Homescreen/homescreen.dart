import 'package:flutter/material.dart';
import 'package:navi/ui/search/searchBar.dart';
import 'package:page_transition/page_transition.dart';
import 'package:navi/ui/Places/places.dart';
import 'package:navi/ui/Loadingscreen/Loading.dart';
import 'package:navi/ui/Places/info.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) => isLoading
      ? const Loading()
      : Scaffold(
          body: Container(
            color: Colors.green,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.fromLTRB(60, 700, 60, 0),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(150, 0, 150, 0),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          alignment: Alignment.bottomCenter,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 182, 182, 182),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: infoCard(),
                                      type: PageTransitionType.bottomToTop));
                            },
                          )),
                      info(
                          title: 'RED CHILLIES',
                          availibility: 'Closed',
                          timings: '||Opens 4:00pm',
                          typeOfDining: 'Dining||Takeaway'),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => searchPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            CircleAvatar(
                              radius: 13,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
}
