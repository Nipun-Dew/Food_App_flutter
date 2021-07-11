import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FilterStates with ChangeNotifier {
  bool isGlutenFree = false;
  bool isLactoseFree = false;
  bool isVegan = false;
  bool isVegetarian = false;

  bool get getGluten {
    return isGlutenFree;
  }

  bool get getLactos {
    return isLactoseFree;
  }

  bool get getVegan {
    return isVegan;
  }

  bool get getVegetarian {
    return isVegetarian;
  }

  set setGluten(bool val) {
    isGlutenFree = val;
    notifyListeners();
  }

  set setLactos(bool val) {
    isLactoseFree = val;
    notifyListeners();
  }

  set setVegan(bool val) {
    isVegan = val;
    notifyListeners();
  }

  set setVegetarian(bool val) {
    isVegetarian = val;
    notifyListeners();
  }
}