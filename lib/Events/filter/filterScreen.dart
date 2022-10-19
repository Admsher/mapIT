import 'package:flutter/material.dart';
import 'package:navi/Events/events.dart';

class filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Text(
                  'Filters',
                  style: TextStyle(fontSize: 25),
                ),
                Container(
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => events()));
                        },
                        child: Icon(Icons.cancel,color: Colors.black,))),
              ],
            ),
            Divider(
              height: 20,
              thickness: 0,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Column(children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "Genre",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              buildSelectOption(
                context,
                'Dance',
                chDance,
              ),
              buildSelectOption(
                context,
                'Music',
                chMusic,
              ),
              buildSelectOption(
                context,
                'Drama',
                chDrama,
              ),
              buildSelectOption(
                context,
                'Comedy',
                chComedy,
              )
            ])),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 30),
            ),
            Container(
                child: Column(children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              buildSelectOption(
                context,
                'Day',
                chDay,
              ),
              buildSelectOption(
                context,
                'Night',
                chNight,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
              ),
              _buildToggleOption(
                context,
                'Live',
              )
            ])),
            Container(
              padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
              child: Row(
               
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Apply Filter"),style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 72, 0),),),
                  ElevatedButton(onPressed: () {}, child: Text("Clear Filter"),style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 72, 0),),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector buildSelectOption(
    BuildContext context,
    String title,
    bool check,
  ) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 130, 0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Checkbox(
                checkColor: Color.fromARGB(255, 255, 72, 0),
                value: check,
                onChanged: (val) {
                  setState() {
                    (check = (true));
                  }
                })
          ],
        ),
      ),
    );
  }

  bool chDrama = false;
  bool chDance = false;
  bool chMusic = false;
  bool chComedy = false;
  bool chDay = false;
  bool chNight = false;
  bool toggleValue = false;
  GestureDetector _buildToggleOption(
    BuildContext context,
    String title,
  ) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 130, 0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lato',
                  color: Colors.black,
                ),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: toggleValue
                    ? Colors.greenAccent[100]
                    : Color.fromARGB(255, 122, 120, 120).withOpacity(0.5),
              ),
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.easeIn,
                    top: 0.0,
                    left: toggleValue ? 60 : 0,
                    right: toggleValue ? 0 : 60,
                    child: InkWell(
                        onTap: ToggleButton,
                        child: AnimatedSwitcher(
                            duration: Duration(milliseconds: 1000),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return RotationTransition(
                                  child: child, turns: animation);
                            },
                            child: toggleValue
                                ? Icon(
                                    Icons.circle,
                                    color: Colors.white,
                                    size: 10.0,
                                    key: UniqueKey(),
                                  )
                                : Icon(Icons.circle,
                                    color: Color.fromARGB(255, 68, 67, 67),
                                    size: 21,
                                    key: UniqueKey()))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ToggleButton() {
    setState() {
      toggleValue = !toggleValue;
    }
  }
}
