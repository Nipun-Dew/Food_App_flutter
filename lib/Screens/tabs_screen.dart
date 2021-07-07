import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favourites_screen.dart';
import './settings_screen.dart';

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Meal Deal"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.dashboard),
                text: "Categories",
              ),
              Tab(
                icon: Icon(Icons.favorite_outlined),
                text: "Favourites",
              ),
              Tab(
                icon: Icon(Icons.settings_sharp),
                text: "Settings",
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          Categories(),
          Favourites(),
          Settings(),
        ]),
      ),
    );
  }
}
