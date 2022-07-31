import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'dart:convert';
import 'package:mountain_weather/constant/text_constant.dart';
import 'package:mountain_weather/constant/color_constant.dart';
import 'package:mountain_weather/component/detail_today_card.dart';
import 'package:mountain_weather/component/oneday_weather.dart';
import 'package:mountain_weather/component/bottom_btns.dart';
import 'package:mountain_weather/component/search_type.dart';
import 'package:mountain_weather/model.dart';
import 'package:mountain_weather/data.dart';

class SearchPage extends HookWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 16.0,
            ),
            serachType(
              searchTitle: "50音順で探す",
              data: KanaData,
              flag: 1,
            ),
            SizedBox(
              height: 24.0,
            ),
            serachType(searchTitle: "都道府県から探す", data: StateData, flag: 2,),
          ],
        ),
      ),
    );
  }
}
