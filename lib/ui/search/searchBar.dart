
import 'package:navi/ui/Homescreen/homescreen.dart';

import 'searchModel.dart';
import 'package:flutter/material.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  static List<searchModel> main_search_list = [
    // List which will be shown when no search is given initially
  ];

  void updateList(String value) {
    setState(() {
      display_list = main_search_list
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  List<searchModel> display_list = List.from(main_search_list);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
              children: [
                
                SizedBox(height: 3.0, width: 40),
                TextField(
                  onChanged: (value) => updateList(value),
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 216, 215, 215),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: display_list.length == 0
                  ? Center(
                      child: Text(
                        "",
                        style: TextStyle(
                            color: Color.fromARGB(255, 82, 80, 80),
                            fontSize: 22),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: ((context, index) => ListTile(
                            title: Text(display_list[index].title!,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                            subtitle: Text(
                              '${display_list[index].side!}',
                              style: TextStyle(color: Colors.grey),
                            ),
                          )),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
