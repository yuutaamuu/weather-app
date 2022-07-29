import 'package:flutter/material.dart';
import 'package:mountain_weather/constant/text_constant.dart';
import 'package:mountain_weather/constant/color_constant.dart';
import 'package:mountain_weather/component/detail_today_card.dart';
import 'package:mountain_weather/component/oneday_weather.dart';

class WeatherDatailPage extends StatelessWidget {
  const WeatherDatailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "高尾山",
                          style: kTitleText,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("雨雲レーダー"),
                        )
                      ]),
                ),
                SizedBox(
                  height: 24.0,
                ),
                detailTodayCard(),
                SizedBox(
                  height: 16.0,
                ),
                Card(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        oneDayWeather(title: "7/26の天気", margin: 20.0,),
                        oneDayWeather(title: "7/27の天気", margin: 0.0,),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Card(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        oneDayWeather(title: "7/26の天気", margin: 20.0,),
                        oneDayWeather(title: "7/27の天気", margin: 0.0,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

