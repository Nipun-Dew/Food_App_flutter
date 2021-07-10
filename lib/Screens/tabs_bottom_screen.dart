import 'package:flutter/material.dart';

import 'settings_screen.dart';
import 'categories_screen.dart';
import 'favourites_screen.dart';

class TabsBottom extends StatefulWidget {
  @override
  _TabsBottomState createState() => _TabsBottomState();
}

class _TabsBottomState extends State<TabsBottom> {
  int _selectIndex = 0;
  final List _widgetPage = [
    Categories(),
    Favourites(),
    Settings(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deal Meal"),
      ),
      body: _widgetPage[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outlined),
            label: "Favourites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_sharp),
            label: "Settings",
          ),
        ],
        currentIndex: _selectIndex,
        onTap: onItemTapped,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.pinkAccent[100],
      ),
    );
  }
}
