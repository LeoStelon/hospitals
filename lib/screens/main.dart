import 'package:flutter/material.dart';
import 'package:hospitals/components/appbar.dart';
import 'package:hospitals/screens/home.dart';
import 'package:hospitals/screens/news.dart';
import 'package:hospitals/screens/supply.dart';
import 'package:hospitals/screens/trace.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

int _selectedIndex = 0;
List<Widget> _widgetOptions = <Widget>[
  HomeScreen(),
  NewsScreen(),
  TraceScreen(),
  SupplyScreen(),
];

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _toggleDrawer() {
    if (_scaffoldKey.currentState.isDrawerOpen) {
      Navigator.of(context).pop();
    } else {
      _scaffoldKey.currentState.openEndDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBarComponent(
        toggleDrawer: _toggleDrawer,
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('Drawer'),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.pink,
        selectedItemColor: Theme.of(context).primaryColor,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.terrain),
          ),
          BottomNavigationBarItem(
            title: Text('News'),
            icon: Icon(Icons.add_circle),
          ),
          BottomNavigationBarItem(
            title: Text('Supply'),
            icon: Icon(Icons.crop_square),
          ),
          BottomNavigationBarItem(
            title: Text('Trace'),
            icon: Icon(Icons.star),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
