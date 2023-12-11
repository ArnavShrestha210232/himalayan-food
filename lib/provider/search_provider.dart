import 'package:flutter/material.dart';

class Search_provider extends ChangeNotifier {
  bool _isSearching = true;
  bool get isSearching => _isSearching;

  search() {
    _isSearching = !_isSearching;
    notifyListeners();
  }
}
