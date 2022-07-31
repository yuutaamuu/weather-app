import 'package:flutter/material.dart';
import 'package:mountain_weather/constant/text_constant.dart';
import 'package:mountain_weather/constant/color_constant.dart';
import 'package:mountain_weather/component/weather_card.dart';
import 'package:mountain_weather/component/search_box.dart';
import 'package:mountain_weather/view/search_page.dart';
import 'package:mountain_weather/view/compare_page.dart';
import 'package:mountain_weather/component/bottom_btns.dart';

class HomePage extends StatelessWidget {
  HomePage({this.bmBtns});

  final focusNode = FocusNode();
  final Widget? bmBtns;

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      child: SafeArea(
        child: GestureDetector(
          onTap: focusNode.requestFocus,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 16.0,
                  ),
                  Column(
                    children: [
                      WeatherCard(
                        cl: kBlue,
                        prefecture: "東京",
                        mountain: "高尾山",
                        time: "7/26 16:00",
                        weatherIcon: Icons.cloud,
                        tempo: "33℃",
                        tempos: "最高 35.3℃ 最低 25.3℃",
                      ),
                      WeatherCard(
                        cl: kOrange,
                        prefecture: "東京",
                        mountain: "高尾山",
                        time: "7/26 16:00",
                        weatherIcon: Icons.cloud,
                        tempo: "33℃",
                        tempos: "最高 35.3℃ 最低 25.3℃",
                      ),
                      WeatherCard(
                        cl: kOrange,
                        prefecture: "東京",
                        mountain: "高尾山",
                        time: "7/26 16:00",
                        weatherIcon: Icons.cloud,
                        tempo: "33℃",
                        tempos: "最高 35.3℃ 最低 25.3℃",
                      ),
                      WeatherCard(
                        cl: kBlue,
                        prefecture: "東京",
                        mountain: "高尾山",
                        time: "7/26 16:00",
                        weatherIcon: Icons.cloud,
                        tempo: "33℃",
                        tempos: "最高 35.3℃ 最低 25.3℃",
                      ),
                      WeatherCard(
                        cl: kBlue,
                        prefecture: "東京",
                        mountain: "高尾山",
                        time: "7/26 16:00",
                        weatherIcon: Icons.cloud,
                        tempo: "33℃",
                        tempos: "最高 35.3℃ 最低 25.3℃",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}