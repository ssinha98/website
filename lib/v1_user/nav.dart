import 'package:flutter/material.dart';
import 'package:website/v1_user/market.dart';
import 'package:website/v1_user/profile.dart';
import 'package:website/v1_user/store.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  var _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = <Widget>[Market(), Store(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.amp_stories),
                label: "Market",
                activeIcon: Icon(
                  Icons.amp_stories,
                  color: Colors.blue[900],
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.store_rounded),
                label: "Store",
                activeIcon: Icon(
                  Icons.store_rounded,
                  color: Colors.blue[900],
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "You",
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.blue[900],
                )),
          ],
        ));
  }
}
