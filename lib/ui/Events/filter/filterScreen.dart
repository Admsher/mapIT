// import 'package:equatable/equatable.dart';
// import 'package:flutter/foundation%20(2).dart';
// import 'package:flutter/material.dart';
// import 'package:navi/ui/Events/events.dart';

// class filter extends StatefulWidget {
//   const filter({super.key});

//   @override
//   State<filter> createState() => _filter();
// }

// class _filter extends State<filter> {
//   bool chDrama = false;
//   bool chDance = false;
//   bool chMusic = false;
//   bool chComedy = false;
//   bool chDay = false;
//   bool chNight = false;
//   bool toggleValue = false;
//   @override
//   Color getColor(Set<MaterialState> states) {
//     const Set<MaterialState> interactiveStates = <MaterialState>{
//       MaterialState.selected,
//       MaterialState.pressed,
//       MaterialState.hovered,
//       MaterialState.focused,
//     };
//     if (states.any(interactiveStates.contains)) {
//       return Color.fromARGB(255, 249, 46, 5);
//     }
//     return Color.fromARGB(255, 0, 0, 0);
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(16),
//         child: Expanded(
//           child: SizedBox(
//             width: 500,
//             child: ListView(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Filters',
//                       style: TextStyle(fontSize: 25),
//                     ),
//                   ],
//                 ),
//                 Divider(
//                   height: 30,
//                   thickness: 0,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                     child: Column(children: [
//                   Container(
//                     child: Row(
//                       children: [
//                         Text(
//                           "Genre",
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Dance",
//                           style: TextStyle(
//                               fontSize: 19, fontWeight:FontWeight.w500),
//                         ),
//                         Checkbox(
//                             checkColor: Colors.white,
//                             fillColor:
//                                 MaterialStateProperty.resolveWith(getColor),
//                             value: chDance,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 chDance = value!;
//                               });
//                             })
//                       ]),
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Music",
//                           style: TextStyle(
//                               fontSize: 19, fontWeight:FontWeight.w500),
//                         ),
//                         Checkbox(
//                             checkColor: Colors.white,
//                             fillColor:
//                                 MaterialStateProperty.resolveWith(getColor),
//                             value: chMusic,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 chMusic = value!;
//                               });
//                             })
//                       ]),
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Drama",
//                           style: TextStyle(
//                               fontSize: 19, fontWeight:FontWeight.w500),
//                         ),
//                         Checkbox(
//                             checkColor: Colors.white,
//                             fillColor:
//                                 MaterialStateProperty.resolveWith(getColor),
//                             value: chDrama,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 chDrama = value!;
//                               });
//                             })
//                       ]),
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Comedy",
//                           style: TextStyle(
//                               fontSize: 19, fontWeight:FontWeight.w500),
//                         ),
//                         Checkbox(
//                             checkColor: Colors.white,
//                             fillColor:
//                                 MaterialStateProperty.resolveWith(getColor),
//                             value: chComedy,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 chComedy = value!;
//                               });
//                             })
//                       ]),
//                 ])),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 0, vertical: 30),
//                 ),
//                 CustomGenreFilter(categories:Category.categories),

//                  Divider(
//                   height: 30,
//                   thickness: 0,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
                
//                 Container(
//                     child: Column(children: [
//                   Container(
//                     child: Row(
//                       children: [
//                         Text(
//                           "Time",
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Day",
//                           style: TextStyle(
//                               fontSize: 19, fontWeight:FontWeight.w500),
//                         ),
//                         Checkbox(
//                             checkColor: Colors.white,
//                             fillColor:
//                                 MaterialStateProperty.resolveWith(getColor),
//                             value: chDay,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 chDay = value!;
//                               });
//                             })
//                       ])
//                 ])),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Night",
//                         style: TextStyle(
//                             fontSize: 19, fontWeight:FontWeight.w500),
//                       ),
//                       Checkbox(
//                           checkColor: Colors.white,
//                           fillColor:
//                               MaterialStateProperty.resolveWith(getColor),
//                           value: chNight,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               chNight = value!;
//                             });
//                           })
//                     ]),
//                 Divider(height: 30),
//                 SwitchListTile(
                    
//                     title: Text(
//                       "Live Now",
//                       style:
//                           TextStyle(fontSize: 19, fontWeight:FontWeight.w500),
//                     ),
//                     inactiveThumbColor: Color.fromARGB(255, 49, 48, 48),
//                     inactiveTrackColor: Color.fromARGB(255, 142, 137, 137),
//                     activeColor: Color.fromARGB(255, 255, 64, 0),
//                     value: toggleValue,
//                     onChanged: (bool value) =>
//                         {setState(() => toggleValue = value)}),
//                 Container(
//                   padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           var categories= state.filter.genreFilter
//                           .where((filter)=>filter.value)
//                           .map((filter)=>filter.genre.name)
//                           .toList();

//                           var prices = state.filter.timeFilter
//                           .where((filter) => filter.value)
//                           .map((filter)=>filter.price.price)
//                           .toList();
//                           List<Events> events = Events.events
//                           .where(
//                             (events)=> genre.any(
//                               (genre) => events.tags.contains(genre),
//                             )
//                           )
//                           .where(
//                             (events)=> time.any(
//                               (genre)=> events.timeCategory.contains(time)
//                             ))
//                             .toList();

//                            Navigator.pushNamed(
//                             context,
//                             '/events-listing',
//                             arguments: events
//                            ); 
//                         },
//                         child: Text("Apply Filter"),
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Color.fromARGB(255, 255, 72, 0),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                         ),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {},
//                         child: Text(
//                           "Clear Filter",
//                           style:
//                               TextStyle(color: Color.fromARGB(255, 255, 72, 0)),
//                         ),
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Color.fromARGB(255, 255, 255, 255),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                         ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class GenreFilter extends Equatable{
//   final int id;
//   final Category genre;
//   final bool value;
//   GenreFilter({
//     required this.id,
//     required this.genre,
//     required this.value,

//   });
// GenreFilter copyWith({

// int?id,
// Category? genre,
// bool?value, 

// })
// {return GenreFilter(id: id ?? this.id, genre: genre ?? this.genre, value: value ??this.value);
// }
// @override
// List<Object?> get  props => [id,genre,value];

// static List<GenreFilter> filters=  Category.categories.map((genre)=> GenreFilter(id: genre.id, genre: genre, value: false)
// .toList());
// } 

// class TimeFilter extends Equatable{
// final int id;
// final Category time;
// final bool value;

//  TimeFilter({
//     required this.id,
//     required this.time,
//     required this.value,

//   });
// TimeFilter copyWith({
 
// int?id,
// Category? time,
// bool?value, 
// })

// {return TimeFilter(id: id ?? this.id,time: time ?? this.time, value: value ??this.value);
// }
// @override
// List<Object?> get  props => [id,time,value];

// static List<TimeFilter> filters=  Category.categories.map((genre)=> TimeFilter(id: time.id, time: time, value: false)
// .toList();)



// } 


// class CustomGenreFilter extends StatelessWidget{
//   final List<GenreFilter> categories;
// const CustomGenreFilter({Key ? key}): super(key:key);

// @override
// Widget build(BuildContext context){

// return ListView.builder(
//   itemCount: categories.length,
//   itemBuilder: (context,index) {
//     return Container(
//       child: Row(children: [
//         Text(categories[index].name,
//         style: TextStyle(
//                             fontSize: 19, fontWeight:FontWeight.w500),
//                       ),
//                       Checkbox(
//                           checkColor: Colors.white,
//                           fillColor:
//                               MaterialStateProperty.resolveWith(Color(Colors.orange)),
//                           value: false,
//                           onChanged: (bool? value) {
                           
//                             })]));
//                           });

    
//   }



// }


