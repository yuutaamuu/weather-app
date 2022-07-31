import 'package:flutter/material.dart';
import 'package:mountain_weather/constant/text_constant.dart';
import 'package:mountain_weather/constant/color_constant.dart';
import 'package:mountain_weather/component/detail_today_card.dart';
import 'package:mountain_weather/component/oneday_weather.dart';
import 'package:mountain_weather/component/bottom_btns.dart';
import 'package:mountain_weather/model.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class ComparePage extends StatefulWidget {
  @override
  State<ComparePage> createState() => _ComparePageState();
}

class _ComparePageState extends State<ComparePage> {
  List items = [];

  Future<void> getMountain() async {
    var url = Uri.parse('https://mountix.codemountains.org/api/v1/mountains');
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

  @override
  void initState() {
    super.initState();
    getMountain();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(items[index].name),
              );
            },
            itemCount: items.length));
  }
}
