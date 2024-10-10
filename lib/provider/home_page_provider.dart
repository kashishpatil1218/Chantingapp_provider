import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProvider extends ChangeNotifier {
  String currentImage = 'assets/img/default_image.jpg';

  // data update
  int counter = 0;

  void updateCounter() {
    counter++;
    saveCounter(counter);
    notifyListeners();
  }

  //data save
  Future<void> saveCounter(int value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool status = await sharedPreferences.setInt('counter', value);
    if (status) {
      log("Counter saved:  $value  " as num);
    }
  }

  //data fetch
  Future<void> getCounter() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    counter = sharedPreferences.getInt('counter') ?? 0;
    notifyListeners();
  }

  HomeProvider() {
    getCounter();
  }
// restart count
  void resetCount() {
    counter = 0;
    notifyListeners();
  }

  //delet count
  void deletCount() {
    counter -= 1;
    notifyListeners();
  }

  void updateImage(String newImage) {
    currentImage = newImage;
    notifyListeners();
  }
}
