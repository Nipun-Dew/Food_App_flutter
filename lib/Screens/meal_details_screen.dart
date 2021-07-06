import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  final Meal meal;

  MealDetailsScreen(this.meal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  child: Image.network(
                    meal.imageUrl,
                    width: double.infinity,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              Container(
                child: Text(
                  "Ingredients",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Container(
                  width: 360,
                  padding:
                      EdgeInsets.only(left: 15, top: 7, right: 15, bottom: 7),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Column(
                      children: meal.ingredients.map((item) {
                    return Row(
                      children: [
                        Icon(
                          Icons.stars_rounded,
                          color: Theme.of(context).accentColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(item),
                      ],
                    );
                  }).toList())),
              Container(
                child: Text(
                  "Steps",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                      children: meal.steps.map((item) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 18,
                        foregroundColor: Theme.of(context).accentColor,
                        child: Text(
                          "${meal.steps.indexOf(item) + 1}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: Text(item),
                    );
                  }).toList())),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
