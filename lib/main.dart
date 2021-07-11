import 'package:flutter/material.dart';
import 'package:food_app/providers/filters_provider.dart';
import 'package:food_app/providers/meals_provider.dart';

//import 'Screens/tabs_bottom_screen.dart';
import 'Screens/tabs_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => MealsData()),
      ChangeNotifierProvider(create: (_) => FilterStates()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          textTheme: TextTheme(
            headline6: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )),
      home: TabScreen(),
      //home: TabsBottom(),
    );
  }
}
