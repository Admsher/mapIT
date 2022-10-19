 import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'Icon_widget.dart';
import 'AccountPage.dart';





class SettingsPage extends StatefulWidget{
  @override
  _SettingsPageState createState()=>_SettingsPageState();
   

}

class _SettingsPageState extends State<SettingsPage>{

@override

Widget build(BuildContext context)=>Scaffold(

  body:Container(
    padding: EdgeInsets.all(10),
    child: ListView(
      children: [
        SizedBox(height: 40),
        Row(children: [
          Icon(
            Icons.person,
            color:Colors.orange
            ),
          SizedBox(width: 10,),
          Text('Account info',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)   
        

        ],),
      Divider(height: 20,thickness: 0,),
      SizedBox(height: 10,),
      buildAccountOption(context,'Change Email'),
      buildAccountOption(context,'Notifications'),
      buildAccountOption(context,'Theme')
      ],
    ),
  )

// SafeArea(
//       child:ListView(
//         padding: EdgeInsets.all(24),
//         children:<Widget>[
//           SettingsGroup(
//             buildDarkMode(),
//             AccountPage(),
//             NotificationsPage(),
//             buildDeleteAccount(),
//             buildReportBug(),
//           ),    
//         const SizedBox(height: 32),         
//         ],
        
      
//        ) ,)
//   );

// Widget buildDarkMode() => SwitchSettingsTile(
//   settingKey: keyDarkMode,
//   leading: IconWidget(
//     icon: Icons.dark_mode, 
//     color: Colors.orange, ),
//     title: 'Dark Mode',
//     onChange (_){},
    
//     );

// Widget buildDeleteAccount() => SimpleSettingsTile(
//   title:'Delete Account',
//   leading:IconWidget(icon:Icons.delete, color:Colors.pink),

//   );

// Widget buildReportBug(BuildContext context) => SimpleSettingsTile(
//   title:'Report A Bug',
//   leading:IconWidget(icon:Icons.delete, color:Colors.pink),
 
  );
}


GestureDetector buildAccountOption(BuildContext context,String title){
  return GestureDetector(
  onTap:(){
    
    showDialog(context:context, builder: (BuildContext context){
      return AlertDialog(
        title:Text(title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Option 1"),
            Text("Option 2"),
        
          ],
        
        ),
        actions: [
          TextButton(
          onPressed:() {
            Navigator.of(context).pop();
          },
          child: Text("Close")
          ),
        ]
      
      
      );
    }
  );
  },

  child: Padding(padding: const EdgeInsets.symmetric(horizontal:20 ,vertical:8 ),
  child:Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title,style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
      ),
      ),
    Icon(Icons.arrow_back)
    
    ],
  ) ,
  ),
  
  
  );
}


