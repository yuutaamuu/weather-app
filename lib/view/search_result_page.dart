import 'package:flutter/material.dart';
import 'package:mountain_weather/constant/text_constant.dart';
import 'package:mountain_weather/constant/color_constant.dart';
import 'package:mountain_weather/component/detail_today_card.dart';
import 'package:mountain_weather/component/oneday_weather.dart';
import 'package:mountain_weather/model.dart';
import 'package:mountain_weather/component/weather_card.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class SearchResultPage extends StatefulWidget {
  final itemName;
  SearchResultPage({required this.itemName});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {

  List items = [];

  int month = 0;
  int day = 0;
  int hour = 0;
  int min = 0;

  Future<void> getMountain() async {
    int dataId = widget.itemName['itemName'];
    print(dataId);
    var url = Uri.parse('https://mountix.codemountains.org/api/v1/mountains?prefecture=$dataId');
    print(url);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse =
      jsonDecode(utf8.decode(response.body.runes.toList()));
      final datas = jsonResponse['mountains'];
      print(datas);
      setState(() {
        items = datas.map((data) => Mountain.fromJson(data)).toList();
      });
    } else {
      throw Exception('Failed to load sentence');
    }
  }

  void getTime() {
    var now = DateTime.now();
    setState((){
      month = now.month;
      day = now.day;
      hour = now.hour;
      min = now.minute;
    });

  }

  @override
  void initState() {
    super.initState();
    getMountain();
    getTime();
  }

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
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return WeatherCard(
                        cl: kBlue,
                        prefecture: items[index].prefectures.join(','),
                        mountain: items[index].name,
                        time: "$month/$day $hour:$min",
                        weatherIcon: Icons.cloud,
                        tempo: "33℃",
                        tempos: "最高 35.3℃ 最低 25.3℃",
                      );
                    },
                    itemCount: items.length)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

