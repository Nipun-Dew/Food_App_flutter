import 'package:flutter/material.dart';

import '../Screens/Filter_screen.dart';
import '../Screens/tabs_screen.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.fastfood_rounded),
                  backgroundColor: Colors.amber,
                  radius: 25,
                ),
                title: Text(
                  "Meal Deal",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          decoration:
          BoxDecoration(color: Theme.of(context).primaryColor),
        ),
        ListTile(
          title: Text(
            "Meals",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Icon(
            Icons.restaurant,
            size: 36,
            color: Theme.of(context).accentColor,
          ),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => TabScreen()));
          },
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => FilterScreen()));
          },
          title: Text(
            "Filter",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Icon(
            Icons.dns,
            size: 36,
            color: Theme.of(context).accentColor,
          ),
        ),
      ],
    );
  }
}
