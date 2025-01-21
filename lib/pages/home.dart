import 'package:bolt_clone_app/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'map_page.dart'; // Your MapPage import

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  Widget _buildContent() {
    switch (_currentIndex) {
      case 0:
        return Stack(
          children: [
            MapPage(onDrawerPressed: _openDrawer),
            Positioned(
              top: 40,
              left: 20,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(Icons.menu, color: Colors.black),
                onPressed: _openDrawer,
              ),
            ),
          ],
        );

      case 1:
        return Center(child: Text("History Page"));
      case 2:
        return AccountPage();
      default:
        return Center(child: Text("Page Not Found"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(),
      body: _buildContent(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Routes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
