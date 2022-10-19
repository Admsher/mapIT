// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';








void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  

  const MyHomePage({
    Key? key,
   
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _controller = PageController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
      
      children:[
      PageView(
        controller: _controller,
        children: [
          Container(
            color: Colors.blue,
          ),
        
          Container(
            color: Colors.red,
          ),

          Container(
            color: Colors.green,
          ),
        ]
        
        ),

       Container(
       alignment: Alignment(0,0.9),
       
       child:Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children:[
        GestureDetector(
          child: 
            Text('Previous',
              style: TextStyle(
                fontFamily: 'Lano',
                fontSize: 13,
                color: Colors.white       
                ),),
        
         onTap: (){
          _controller.previousPage(duration:Duration(milliseconds: 500), curve: Curves.easeInBack);
         }
        ),
        
      Container(
        
        child:Text(""),
        // SmoothPageIndicator(controller: _controller, count: 3), 
        
      ),
        
        
      GestureDetector(
          child: 
            Text('Next',
              style: TextStyle(
                fontFamily: 'Lano',
                fontSize: 13,
                color: Colors.white       
                ),),
        
         onTap: (){
          _controller.nextPage(duration:Duration(milliseconds: 500), curve: Curves.easeInBack);
         }
        ),
        
        
        
        
        
        
        
        ],
       )),
        ],

      



      ),
    );
  }



}