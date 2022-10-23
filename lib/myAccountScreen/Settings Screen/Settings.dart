import 'package:flutter/material.dart';
import 'package:navi/myAccountScreen/Myaccount.dart';
import 'package:navi/darkMode/change_theme_button_widget.dart';

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
              const buildToggleOption(),
              // _buildToggleOption(context, 'Dark Theme', Icon(Icons.dark_mode)),
              buildAccountOption(
                  context, 'Invite A Friend', Icon(Icons.person_add)),
              buildAccountOption(
                  context, 'Delete Account', Icon(Icons.remove_circle)),

              SwitchListTile(
                  title: Text(
                    "Notifications",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  inactiveThumbColor: Color.fromARGB(255, 49, 48, 48),
                  inactiveTrackColor: Color.fromARGB(255, 142, 137, 137),
                  activeColor: Color.fromARGB(255, 255, 64, 0),
                  value: toggleValue,
                  onChanged: (bool value) =>
                      {setState(() => toggleValue = value)}),
              // changeThemeButtonWidget(),
            ],
          ),
        ),
      );
}

GestureDetector buildAccountOption(
    BuildContext context, String title, Icon icon) {
  return GestureDetector(
    onTap: () {
      // showDialog(
      //     context: context,
      //     builder: (BuildContext context) {
      //       return AlertDialog(
      //           title: Text(title),
      //           content: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               Text("Option 1"),
      //               Text("Option 2"),
      //             ],
      // ),
      // actions: [
      //   TextButton(
      //       onPressed: () {
      //         Navigator.of(context).pop();
      //       },
      //       child: Text("Close")),
      // ]);
      // }
      // );
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

class buildToggleOption extends StatefulWidget {
  const buildToggleOption({super.key});

  @override
  State<buildToggleOption> createState() => _buildToggleOption(
      text: "Notifications", icon: Icon(Icons.notifications));
}

class _buildToggleOption extends State<buildToggleOption> {
  _buildToggleOption({
    Key? key,
    required this.text,
    required this.icon,
  });
  final String text;
  final Icon icon;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      child: Row(
        children: [
          icon,
          SwitchListTile(
              title: Text(
                text,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              inactiveThumbColor: Color.fromARGB(255, 49, 48, 48),
              inactiveTrackColor: Color.fromARGB(255, 142, 137, 137),
              activeColor: Color.fromARGB(255, 255, 64, 0),
              value: toggleValue,
              onChanged: (bool value) => {setState(() => toggleValue = value)}),
        ],
      ),
    );
  }
}
