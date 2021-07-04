import 'package:flutter/material.dart';
import './categoryItem.dart';
import './category_data.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal Deal!",),
      ),
      body: GridView(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 10,
            left: 18,
            right: 18,
          ),
            children: CAT_LIST
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
      ),
    );
  }
}
