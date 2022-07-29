import 'package:flutter/material.dart';
import 'package:mountain_weather/constant/text_constant.dart';
import 'package:mountain_weather/constant/color_constant.dart';

class detailTodayCard extends StatelessWidget {
  const detailTodayCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "現在の天気",
                    style: kSecondText,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("7/26 16:00"),
                ]),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                      size: 50,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text("風速\n2m/s"),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text("降水量\n10.0mm")
                  ],

                ),
                Text('33℃', style: kTemperatureText,)
              ],

            )
          ],
        ),
      ),
    );
  }
}