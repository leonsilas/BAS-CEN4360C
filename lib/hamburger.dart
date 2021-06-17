import 'package:flutter/material.dart';
import 'package:flutter_crash_course/constants.dart';

class HamburgerMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: aPrimaryColor),
            child: Image.asset("./assets/vc_seal.png"),
          ),
          ListTile(
            leading: Icon(Icons.home, color: aSecondaryColor, size: 32),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                Icon(Icons.content_paste, color: aSecondaryColor, size: 32),
            title: Text("Tasks"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                Icon(Icons.calendar_today, color: aSecondaryColor, size: 32),
            title: Text("Calendar"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                Icon(Icons.school_outlined, color: aSecondaryColor, size: 32),
            title: Text("Exams"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                Icon(Icons.class__outlined, color: aSecondaryColor, size: 32),
            title: Text("Schedule"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                Icon(Icons.account_circle, color: aSecondaryColor, size: 32),
            title: Text("Profile"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: aSecondaryColor, size: 32),
            title: Text("Settings"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
