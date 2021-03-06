import 'package:flutter/material.dart';
import '../widgets/meals_item.dart';
import 'package:provider/provider.dart';
import '../providers/meals_provider.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider.of<MealsData>(context, listen: true).favMeals.isEmpty
        ? Center(
            child: Text("There is no favourite Meals!"),
          )
        : ListView.builder(
            itemCount:
                Provider.of<MealsData>(context, listen: true).favMeals.length,
            itemBuilder: (context, index) {
              return MealsItem(Provider.of<MealsData>(context, listen: true)
                  .favMeals[index]);
            },
          );
  }
}
