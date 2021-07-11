import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/meal.dart';
import '../widgets/meals_item.dart';
import '../providers/meals_provider.dart';
import '../providers/filters_provider.dart';

class CategoryMealScreen extends StatelessWidget {
  final String title;
  final String id;

  CategoryMealScreen(this.title, this.id);

  @override
  Widget build(BuildContext context) {

    bool isGlutenFree = Provider.of<FilterStates>(context, listen: false).getGluten;
    bool isLactoseFree = Provider.of<FilterStates>(context, listen: false).getLactos;
    bool isVegan = Provider.of<FilterStates>(context, listen: false).getVegan;
    bool isVegetarian = Provider.of<FilterStates>(context, listen: false).getVegetarian;

    final List<Meal> categoryMeals = context
        .read<MealsData>()
        .MEAL_LIST
        .where((meal) {
          if(!meal.categories.contains(id)) {
            return false;
          }
          if(isGlutenFree && !meal.isGlutenFree) {
            return false;
          }
          if(isLactoseFree && !meal.isLactoseFree) {
            return false;
          }
          if(isVegan && !meal.isVegan) {
            return false;
          }
          if(isVegetarian && !meal.isVegetarian) {
            return false;
          }
          return true;
        })
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          return MealsItem(categoryMeals[index]);
        },
      ),
    );
  }
}
