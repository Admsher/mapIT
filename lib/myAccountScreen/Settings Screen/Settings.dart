import 'package:flutter/material.dart';
import 'package:navi/My Account Screen/Myaccount.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen()));
                      },
                      child: Icon(Icons.arrow_back))
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Divider(
                height: 20,
                thickness: 0,
              ),
              SizedBox(
                height: 10,
              ),
              buildAccountOption(
                  context, 'Personal Details', Icon(Icons.person)),
              _buildToggleOption(
                  context, 'Notifications', Icon(Icons.notifications)),
              _buildToggleOption(context, 'Dark Theme', Icon(Icons.dark_mode)),
              buildAccountOption(
                  context, 'Invite A Friend', Icon(Icons.person_add)),
              buildAccountOption(
                  context, 'Delete Account', Icon(Icons.remove_circle))
            ],
          ),
        ),
      );
}

GestureDetector buildAccountOption(
    BuildContext context, String title, Icon icon) {
  return GestureDetector(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                ]);
          });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 130, 0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Icon(Icons.arrow_forward_rounded)
        ],
      ),
    ),
  );
}

bool toggleValue = false;
GestureDetector _buildToggleOption(
    BuildContext context, String title, Icon icon) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 130, 0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            height: 20,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: toggleValue
                  ? Colors.greenAccent[100]
                  : Colors.grey[100]?.withOpacity(0.5),
            ),
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.easeIn,
                  top: 0.0,
                  left: toggleValue ? 60 : 0,
                  right: toggleValue ? 0 : 60,
                  child: InkWell(
                      onTap: ToggleButton,
                      child: AnimatedSwitcher(
                          duration: Duration(milliseconds: 1000),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return RotationTransition(
                                child: child, turns: animation);
                          },
                          child: toggleValue
                              ? Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 10.0,
                                  key: UniqueKey(),
                                )
                              : Icon(Icons.circle,
                                  color: Colors.white,
                                  size: 21,
                                  key: UniqueKey()))),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

ToggleButton() {
  setState() {
    toggleValue = !toggleValue;
  }
}
