import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  final String title;

  MealDetailsScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: Text("Hello this is meal details!!"),
      ),
    );
  }
}
