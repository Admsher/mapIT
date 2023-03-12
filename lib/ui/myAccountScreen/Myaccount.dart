import 'package:flutter/material.dart';
import 'package:navi/ui/Homescreen/homescreen.dart';
import 'package:navi/ui/Loadingscreen/Loading.dart';
import 'package:navi/ui/Places/places.dart';
import 'package:page_transition/page_transition.dart';
import 'body.dart';
import '../Navigation.dart';
import 'package:navi/ui/Events/events.dart';
import 'package:navi/ui/Saved/Saved.dart';
import 'package:navi/ui/Places/info.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context)=>isLoading ? const Loading() :
  Scaffold(
     
     
      body: Stack(
        children: [
          
          Body(),
        
        Container(
           margin: EdgeInsets.fromLTRB(0, 900, 0, 0),
          child: MyNavigation(
              color1: Color.fromARGB(255, 0, 0, 0),
              press1: (){Navigator.push(context, PageTransition(child: infoCard(), type: PageTransitionType.leftToRight));},
              color2: Colors.black,
              press2: () {
                {Navigator.push(context, PageTransition(child: events(), type: PageTransitionType.leftToRight));}
              },
              color3: Colors.black,
              press3: () {
                  {Navigator.push(context, PageTransition(child: saved(), type: PageTransitionType.leftToRight));}
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



