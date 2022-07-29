import 'package:flutter/material.dart';
import 'package:mountain_weather/view/home_page.dart';
import 'package:mountain_weather/view/search_page.dart';
import 'package:mountain_weather/view/compare_page.dart';

class Route {
  int _current = 0;

  final _pages = <Widget>[SearchPage(), HomePage(), ComparePage()];

  void _onTap(int index) {
    _current = index;
  }
}
