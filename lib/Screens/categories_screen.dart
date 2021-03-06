import 'package:flutter/material.dart';
import 'package:food_app/providers/meals_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/category_Item.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 10,
            left: 18,
            right: 18,
          ),
            children: context.read<MealsData>().CAT_LIST
                .map(
                  (cat) => CategoryItem(
                    color: cat.color,
                    title: cat.title,
                    id: cat.id,
                  ),
                )
                .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
            ),
      );
  }
}
