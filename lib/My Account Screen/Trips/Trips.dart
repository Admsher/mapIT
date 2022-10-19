import 'package:flutter/material.dart';

class TripPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 20),
              Row(
                children: [Icon(Icons.arrow_back)],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Trips',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Divider(
                height: 20,
                thickness: 0,
              ),
              SizedBox(
                height: 10,
              ),
              buildTripOption(context, "C-404", "From: DLT-8"),
              buildTripOption(context, "DLT-8", "From: A Mess"),
              buildTripOption(context, "A mess", "From: Ice n Spice"),
            ],
          ),
        ),
      );
}

GestureDetector buildTripOption(
    BuildContext context, String Destination, String From) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 130, 0),
            child: Column(
              children: [
                Text(
                  Destination,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  From,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 240, 55, 4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            child: Text(
              "Retrack",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontFamily: 'Lato',
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
