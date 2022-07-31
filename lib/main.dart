import 'package:flutter/material.dart';
import './view//home_page.dart';
import 'package:mountain_weather/constant/text_constant.dart';
import 'package:mountain_weather/constant/color_constant.dart';
import 'package:mountain_weather/component/search_box.dart';
import 'package:page_transition/page_transition.dart';

import 'package:mountain_weather/view/weather_detail_page.dart';
import 'package:mountain_weather/view/search_page.dart';
import 'package:mountain_weather/view/compare_page.dart';
import 'package:mountain_weather/view/search_result_page.dart';
import 'package:mountain_weather/component/bottom_btns.dart';

//main function
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
      // routes: <String, WidgetBuilder>{
      //   '/': (BuildContext context) => HomePage(),
      //   '/searchPage': (BuildContext context) => SearchPage(),
      //   '/comparePage': (BuildContext context) => ComparePage(),
      // },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/weatherDetail':
            return PageTransition(
              child: WeatherDatailPage(),
              duration: Duration(milliseconds: 200),
              reverseDuration: Duration(milliseconds: 200),
              type: PageTransitionType.bottomToTop,
              settings: settings,
            );
          case '/searchResult':
            return PageTransition(
              child: SearchResultPage(itemName: settings.arguments,),
              duration: Duration(milliseconds: 200),
              reverseDuration: Duration(milliseconds: 200),
              type: PageTransitionType.bottomToTop,
              settings: settings,
            );
          default:
            return null;
        }
      },
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white, //<-- SEE HERE
              displayColor: Colors.white,
            ),
        scaffoldBackgroundColor: Color(0xFF333333),
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _current = 0;
  bool isActiveBar = true;

  static List<Widget> _pageList = [HomePage(), SearchPage(), ComparePage()];

  void _onTap(int index) {
    setState(() {
      _current = index;
      index == 2 ? isActiveBar = false : isActiveBar = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: isActiveBar ? searchBox() : null,
          backgroundColor: Colors.white.withOpacity(0.0),
          elevation: 0.0,
        ),
        extendBodyBehindAppBar: true,
        body: _pageList[_current],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: kOrange,
          onTap: _onTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: '探す'),
            BottomNavigationBarItem(
                icon: Icon(Icons.compare_arrows), label: '比較'),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _current,
        ));
  }
}
