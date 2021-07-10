import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter"),
      ),
      body: Center(child: Text("Filter Screen")),
      drawer: Drawer(child: MyDrawer()),
    );
  }
}
