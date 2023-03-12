import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:navi/ui/Loadingscreen/Loading.dart';
import 'package:navi/ui/myAccountScreen/Myaccount.dart';
import 'package:page_transition/page_transition.dart';

class Feedbackform extends StatefulWidget {
  const Feedbackform({super.key});

  @override
  State<Feedbackform> createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedbackform> {
  bool isLoading = false;
  late final _ratingController;
  late double _rating;

  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;
  String result="";
  IconData? _selectedIcon;
  final TextEditingController controller = new TextEditingController();
  @override
  void initState() {
    super.initState();
    _ratingController = TextEditingController(text: '3.0');
    _rating = _initialRating;
  }

  Widget build(BuildContext context) => isLoading
      ? const Loading()
      : Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          color: Colors.white,
          child: Column(children: [
            SizedBox(height: 20),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          PageTransition(
                              child: ProfileScreen(),
                              type: PageTransitionType.topToBottom));
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.black,
                    ))
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 30, 0, 50),
                  child: Text(
                    "Feedback",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Color.fromARGB(255, 255, 248, 32),
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 50),
              child: Text(
                "We are fixing bugs as soon as we spot them. If something slipped through our fingers, we’d be so grateful to be aware of it and fix it.",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          
          Material(
            
            child: SizedBox(height: 600,
            
              child: Column(
                children: [
                  TextField(
                          
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                                borderSide: BorderSide.none),
                            hintText: "Your explanation is entirely optional.",

                            
                            
                           
                          ),
                        onChanged: (String str){
                          setState(() {
                            result = result+str;
                          });
                          controller.text=str;
                          

                        },
                        
                        controller: controller,
                        
                        ),
                          
                         
                ],
              ),
                 
            ),
          ),
          SizedBox(
           width: 500,
           height: 50,   
           
              child: ElevatedButton(
                          onPressed: () {},
                          child: Text("SUBMIT",
                          style: TextStyle(fontSize: 20),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 72, 0),
                            
                            shape:
                            
                             RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32 )),
                          ),
                        ),
            ),
           
                
          ]));


}
