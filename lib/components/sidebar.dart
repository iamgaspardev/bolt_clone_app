import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Ionicons.person_circle_sharp,
                    size: 40,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "User Name", // You can change this to dynamic name
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Ionicons.person_outline),
            title: Text("Profile"),
            onTap: () {
              // Handle navigation to Profile Page
            },
          ),
          ListTile(
            leading: Icon(Ionicons.card_outline),
            title: Text("Payments"),
            onTap: () {
              // Handle navigation to Payments Page
            },
          ),
          ListTile(
            leading: Icon(Ionicons.bus_outline),
            title: Text("My Ride"),
            onTap: () {
              // Handle navigation to My Ride Page
            },
          ),
          ListTile(
            leading: Icon(Ionicons.help_circle_outline),
            title: Text("Support"),
            onTap: () {
              // Handle navigation to Support Page
            },
          ),
          ListTile(
            leading: Icon(Ionicons.information_circle_outline),
            title: Text("About Us"),
            onTap: () {
              // Handle navigation to About Us Page
            },
          ),
        ],
      ),
    );
  }
}
