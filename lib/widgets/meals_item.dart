import 'package:flutter/material.dart';
import 'package:food_app/models/meal.dart';
import '../models/meal.dart';
import '../Screens/meal_details_screen.dart';

class MealsItem extends StatelessWidget {
  final Meal meal;

  MealsItem(this.meal);

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return MealDetailsScreen(meal);
    }));
  }

  String selectComplexity(Meal meal) {
    switch (meal.complexity) {
      case Complexity.Simple:
        return "Simple";
      case Complexity.Challenging:
        return "Challenging";
      case Complexity.Hard:
        return "Hard";
      default:
        return "Simple";
    }
  }

  String selectAffordability(Meal meal) {
    switch (meal.affordability) {
      case Affordability.Affordable:
        return "Affordable";
      case Affordability.Luxurious:
        return "Luxurious";
      case Affordability.Pricey:
        return "Pricey";
      default:
        return "Pricey";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 23, vertical: 20),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    width: double.infinity,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                meal.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              padding: EdgeInsets.only(top: 10, bottom: 6),
            ),
            Divider(
              thickness: 0.8,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.access_alarm),
                      SizedBox(width: 6),
                      Text("${meal.duration} min"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.restaurant_menu),
                      SizedBox(width: 6),
                      Text("${selectComplexity(meal)}"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 6),
                      Text("${selectAffordability(meal)}"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () => selectMeal(context, meal),
    );
  }
}
