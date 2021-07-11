import 'package:flutter/material.dart';
import 'package:food_app/providers/filters_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/drawer.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  @override
  Widget build(BuildContext context) {

    bool isGlutenFree = Provider.of<FilterStates>(context, listen: false).getGluten;
    bool isLactoseFree = Provider.of<FilterStates>(context, listen: false).getLactos;
    bool isVegan = Provider.of<FilterStates>(context, listen: false).getVegan;
    bool isVegetarian = Provider.of<FilterStates>(context, listen: false).getVegetarian;

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
              Provider.of<FilterStates>(context, listen: false).setGluten = val;
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
              Provider.of<FilterStates>(context, listen: false).setLactos = val;
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
              Provider.of<FilterStates>(context, listen: false).setVegan = val;
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
              Provider.of<FilterStates>(context, listen: false).setVegetarian = val;
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
