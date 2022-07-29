import 'package:flutter/material.dart';
import 'package:mountain_weather/constant/text_constant.dart';
import 'package:mountain_weather/constant/color_constant.dart';

class oneDayWeather extends StatelessWidget {
  const oneDayWeather({required this.title, required this.margin});

  final String title;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: kSecondText,),
          SizedBox(
            height: 8.0,
          ),
          Table(
            children: [
              TableRow(
                children: [
                  Center(child: Text("", style: TextStyle(fontSize: 11.0))),
                  Center(
                    child: Text("00時",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("03時",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("06時",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("09時",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("12時",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("15時",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("18時",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("21時",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                ],
              ),
              TableRow(children: [
                Center(child: Text("天候", style: TextStyle(fontSize: 11.0))),
                Center(child: Text("", style: TextStyle(fontSize: 11.0))),
                Center(child: Text("", style: TextStyle(fontSize: 11.0))),
                Center(
                  child: Icon(
                    Icons.cloud,
                    size: 18,
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.cloud,
                    size: 18,
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.cloud,
                    size: 18,
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.cloud,
                    size: 18,
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.cloud,
                    size: 18,
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.cloud,
                    size: 18,
                  ),
                ),
              ]),
              TableRow(
                children: [
                  Center(
                    child: Text("気温",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(child: Text("", style: TextStyle(fontSize: 11.0))),
                  Center(child: Text("", style: TextStyle(fontSize: 11.0))),
                  Center(
                    child: Text("29℃",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("29℃",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("29℃",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("29℃",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("29℃",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("29℃",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Center(
                    child: Text("風速",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(child: Text("", style: TextStyle(fontSize: 11.0))),
                  Center(child: Text("", style: TextStyle(fontSize: 11.0))),
                  Center(
                    child: Text("10",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("10",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("10",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("10",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("10",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("10",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Center(
                    child: Text("降水量",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(child: Text("", style: TextStyle(fontSize: 11.0))),
                  Center(child: Text("", style: TextStyle(fontSize: 11.0))),
                  Center(
                    child: Text("10.0",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("10.0",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("10.0",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("10.0",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("10.0",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Center(
                    child: Text("10.0",
                        style: TextStyle(fontSize: 11.0)),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
