import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isGlutenFree = false;
  bool isLactoseFree = false;
  bool isVegan = false;
  bool isVegetarian = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text(
            "Filter your meals",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 30,),
          SwitchListTile(
            title: Text("Gluten Free"),
            subtitle: Text("Show only foods which Gluten free"),
            value: isGlutenFree,
            onChanged: (val) {
              setState(() {
                isGlutenFree = val;
              });
            },
          ),
          SwitchListTile(
            title: Text("Lactose Free"),
            subtitle: Text("Show only foods which Lactose free"),
            value: isLactoseFree,
            onChanged: (val) {
              setState(() {
                isLactoseFree = val;
              });
            },
          ),
          SwitchListTile(
            title: Text("Vegan"),
            subtitle: Text("Show Vegan food only"),
            value: isVegan,
            onChanged: (val) {
              setState(() {
                isVegan = val;
              });
            },
          ),
          SwitchListTile(
            title: Text("Vegetarian"),
            subtitle: Text("Show Vegetarian food only"),
            value: isVegetarian,
            onChanged: (val) {
              setState(() {
                isVegetarian = val;
              });
            },
          ),
        ],
      ),
      drawer: Drawer(child: MyDrawer()),
    );
  }
}
