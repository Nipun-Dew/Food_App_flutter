import 'package:flutter/material.dart';
import './models/meal.dart';
import './category_data.dart';

class CategoryMealScreen extends StatelessWidget {
  final String title;
  final String id;

  CategoryMealScreen(this.title, this.id);

  @override
  Widget build(BuildContext context) {
    final List<Meal> categoryMeals =
        MEAL_LIST.where((meal) => meal.categories.contains(id)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categoryMeals[index].title),
          );
        },
      ),
    );
  }
}
