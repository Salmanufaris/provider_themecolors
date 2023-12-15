import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  int theme = 0;
  List collors = [Colors.orange, Colors.green, Colors.yellow];
  void colorchanging() {
    theme = (theme + 1) % collors.length;
    notifyListeners();
  }
}
