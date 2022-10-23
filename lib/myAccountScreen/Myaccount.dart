import 'package:flutter/material.dart';
import 'package:navi/Homescreen/Homescreen.dart';
import 'body.dart';
import '../Navigation.dart';
import 'package:navi/Events/events.dart';
import 'package:navi/Saved/Saved.dart';
class ProfileScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     
      body: Stack(
        children: [
          
          Body(),
        
        Container(
           margin: EdgeInsets.fromLTRB(0, 900, 0, 0),
          child: MyNavigation(
              color1: Color.fromARGB(255, 0, 0, 0),
              press1: (){Navigator.push(context, MaterialPageRoute(builder: (context) => infoCard()));},
              color2: Colors.black,
              press2: () {
                {Navigator.push(context, MaterialPageRoute(builder: (context) => events()));}
              },
              color3: Colors.black,
              press3: () {
                  {Navigator.push(context, MaterialPageRoute(builder: (context) => saved()));}
              },
              color4: Colors.black,
              press4: () {},
              color5: Color.fromARGB(255, 255, 85, 0),
              press5: (() {
               
              }),
            ),
        ),
        ],
      ),
      
      
      
    
    );

    
  
  
  
  
  
  
  }
}
