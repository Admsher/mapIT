import 'package:flutter/material.dart';
import 'package:navi/services/firebas_auth_service.dart';
import 'package:navi/ui/cardHolder/Intro1.dart';
import 'package:page_transition/page_transition.dart';
import 'Profilepic.dart';
import 'ProfileMenu.dart';
import 'Settings Screen/Settings.dart';
import 'Feedback/feedback.dart';
// import 'package:provider/provider.dart';
import 'package:navi/services/firebas_auth_service.dart';
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
            icon:Icon(Icons.settings,color: Colors.black),
            press: (){ Navigator.push(context, PageTransition(child: SettingsPage(), type: PageTransitionType.bottomToTop));},
            ),
            SizedBox(height: 1),
            ProfileMenuCard(
            text: "About", 
            icon:Icon(Icons.info,color: Colors.black),  
            press: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Intro1()));},
            ),
            ProfileMenuCard(
            text: "Help", 
            icon:Icon(Icons.help_outline_sharp,color: Colors.black),  
            press: (){},
            ),
            ProfileMenuCard(
            text: "Feedback", 
            icon:Icon(Icons.feedback,color: Colors.black,),  
            press: (){Navigator.push(context,PageTransition(child: Feedbackform(), type: PageTransitionType.bottomToTop));},
            ),
          ProfileMenuCard(
            text: "Logout", 
            icon:Icon(Icons.logout,color: Colors.black,),
            press: (){
              
              showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                title: Text("Are you sure you want to log out?"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    
                   
                  ],
      ),
   
      
      actions: [
        TextButton(
          style:TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 237, 47, 5),
            shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(32)),
          ),
            onPressed: () {
              // final provider = Provider.of<GoogleSignInProvider>(context,listen: provider.logout());
            },
            child: Text("Yes",
            style: TextStyle(color: Colors.white))),
        
        
        TextButton(
          style:TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 237, 47, 5),
            shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(32)),
          ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("No",
            style: TextStyle(color: Colors.white),)),
      ]);
      }
      );
              
             
            },
            ),
              ],
             ),
          
        ],
      
      ),
       
       
      
       
       
        
      
    );

  }

}
