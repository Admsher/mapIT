import 'package:flutter/material.dart';

class info extends StatelessWidget {
  @override
  const info({
    Key? key,
    required this.id,
    required this.title,
    required this.availibility,
    required this.timings,
    required this.tags,
    
  }) : super(key: key);
  final int id;
  final String title, availibility, timings;
  final List<String> tags;
  Widget build(BuildContext context) {
    //,icon;

    return Container(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 255, 254, 254),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //color: Colors.amber,
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),

                  child: Image.asset(
                    'assets/images/img.png',
                  fit: BoxFit.cover,
                  ),
                  
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(16, 0, 0, 16),
                        child: Text(title,
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                        child: TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.bookmark_border_outlined,
                              color: Colors.black,
                            )),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(availibility,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 222, 5, 5))),
                   
                      ],
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 10),
                    child:      Text(timings,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 17, 17, 17))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
