import 'package:flutter/material.dart';
import 'package:mountain_weather/view/home_page.dart';
import 'package:mountain_weather/view/search_page.dart';
import 'package:mountain_weather/view/compare_page.dart';

class bottomBtns extends StatefulWidget {
  @override
  State<bottomBtns> createState() => _bottomBtnsState();
}

class _bottomBtnsState extends State<bottomBtns> {
  int _current = 0;

  static List<Widget> _pageList = [SearchPage(), HomePage(), ComparePage()];

  void _onTap(int index) {
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onTap,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.search), label: '探す'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
        BottomNavigationBarItem(icon: Icon(Icons.compare_arrows), label: '比較'),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _current,
    );
  }
}
