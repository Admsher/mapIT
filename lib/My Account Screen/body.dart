import 'package:flutter/material.dart';
import 'Profilepic.dart';
import 'ProfileMenu.dart';
import 'Settings Screen/Settings.dart';
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
     color: Color.fromARGB(255, 237, 47, 5),
     
      child: 
      Stack(
        children:[
    Container( 
   alignment: Alignment.topLeft,
   margin: EdgeInsets.fromLTRB(0,19,0,0),
   child:
    TextButton(
    
    onPressed: (){},
    child: 
    Text("Account",
    style: TextStyle(
      fontSize: 24,
      color: Colors.white,
      fontFamily:'Lato', 
    ),
    
    ),



    ), 
    ),
     
     
     
     
     
     Container(
      
      alignment:Alignment(0,300),
      margin: EdgeInsets.fromLTRB(0,250.8,0,0),
      decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      color: Colors.white
       ),
    
     
     ),
      




      

Container(
   color: Colors.white,
   alignment: Alignment.bottomCenter,
   
   margin: EdgeInsets.fromLTRB(0, 400, 0, 0),
   padding: EdgeInsets.fromLTRB(100,0,200,0),

      ), 
       



 
    
    
      Column(
       
        children:<Widget>[
        
            profilePic() ,
          
            ProfileMenuCard(
            text: "Settings", 
            //icon:
            press: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));},
            ),
            SizedBox(height: 1),
            ProfileMenuCard(
            text: "About", 
            //icon:  
            press: (){},
            ),
            ProfileMenuCard(
            text: "Help", 
            //icon:  
            press: (){},
            ),
            ProfileMenuCard(
            text: "Feedback", 
            //icon:  
            press: (){},
            ),
          ProfileMenuCard(
            text: "Logout", 
            //icon:  
            press: (){},
            ),
              ],
             ),
          
        ],
      
      ),
       
       
      
       
       
        
      
    );

  }

}
