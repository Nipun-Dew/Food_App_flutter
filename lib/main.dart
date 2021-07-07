import 'package:flutter/material.dart';
import 'Screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
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
                  fontWeight: FontWeight.bold
                ),
              )),
      home: TabScreen(),
    );
  }
}
