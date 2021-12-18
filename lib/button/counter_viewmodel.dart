import 'package:flutter/material.dart';
class CounterViewModel extends ChangeNotifier{
  int _value =0;
  int get value => _value;
  decreamentValue(){
      _value--;
      notifyListeners();
  }

  incrementValue(){
      _value++;
      notifyListeners();
  }
}