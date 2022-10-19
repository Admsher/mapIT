import 'package:flutter/animation.dart';
import 'package:flutter/cupertino%20(2).dart';
import 'package:flutter/material%20(2).dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino%20(2).dart';
// import 'package:flutter/material%20(2).dart';



class ProfileMenuCard extends StatelessWidget{

  @override

  const ProfileMenuCard({
    Key ? key,
    required this.text,
    required this.press,
  }
  ):super(key: key);
    final String text;  //,icon;
    final VoidCallback press;

  Widget build(BuildContext context)
  {
    return Container( 
    height: 89,
    child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical:12),
        child: ElevatedButton(
          style:ElevatedButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius:  BorderRadius.circular(12)),
          padding: EdgeInsets.symmetric(horizontal:20,vertical:0 ),
          backgroundColor: Colors.white,
        ),

        onPressed: press,

        child: 
        Row(
          children: [
            const SizedBox(width: 40),
            Expanded(
              child: 
              Text(
                text,
                style:const TextStyle (
                fontSize: 20,
                color: Colors.black,  
                fontFamily: 'Lato',
                ),
              ),
            ),
          ],
        ),              
        ),
      )
    );
  }   
}
// class ProfileMenu extends StatelessWidget {
//   @override
//   const ProfileMenu({
//     Key? key,
//     required this.text,
//     //required this.icon,
//     required this.press,
//   }) : super(key: key);
//   final String text; //,icon;
//   final VoidCallback press;

//   Widget build(BuildContext context) {
//     return Container(
//         height: 89,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12)),
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
//               backgroundColor: Colors.white,
//             ),
//             onPressed: press,
//             child: Row(
//               children: [
//                 //SvgPicture.asset(
//                 //icon,
//                 // width: 22,
//                 // color:kPrimaryColor,

//                 SizedBox(width: 40),
//                 Expanded(
//                   child: Text(
//                     text,
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontFamily: 'Lato',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
