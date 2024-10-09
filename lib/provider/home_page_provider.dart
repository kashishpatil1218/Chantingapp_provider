import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProvider extends ChangeNotifier {
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
   bool status=  await sharedPreferences.setInt('counter', value);
    if(status)
      {
          log("Counter saved:  $value  "as num);
      }
  }

  //data fetch
  Future<void> getCounter() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    counter = sharedPreferences.getInt('counter') ?? 0;
    notifyListeners();
  }
  HomeProvider(){
    getCounter();

  }

  void updateImage(String image)
  {
    var _Bgimage= image;
    notifyListeners();
  }
}
