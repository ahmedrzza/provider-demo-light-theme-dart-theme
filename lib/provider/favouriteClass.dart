import 'package:flutter/material.dart';

class FavouritemItemProvider with ChangeNotifier {
  List<int> _selecteditem = [];
  List<int> get selecteditem => _selecteditem;
  void additem(int value) {
    _selecteditem.add(value);
    notifyListeners();
  }
  void removeItem(int value) {
    _selecteditem.remove(value);
    notifyListeners();
  }
}
