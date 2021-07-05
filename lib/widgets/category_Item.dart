import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Screens/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem({required this.title, required this.color, required this.id});

  void selectCategory(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => CategoryMealScreen(title, id)));
  }

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          color.withOpacity(0.7),
          color,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(18),
      ),
      child: InkWell(
        onTap: () => selectCategory(context),
        radius: 25,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
