import 'package:flutter/material.dart';
import 'package:mountain_weather/constant/text_constant.dart';
import 'package:mountain_weather/constant/color_constant.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard(
      {required this.cl,
        required this.prefecture,
        required this.mountain,
        required this.time,
        required this.weatherIcon,
        required this.tempo,
        required this.tempos});

  final Color cl;
  final String prefecture;
  final String mountain;
  final String time;
  final IconData weatherIcon;
  final String tempo;
  final String tempos;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/weatherDetail');
      },
      child: Card(
        color: cl,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(prefecture),
                          Text(
                            mountain,
                            style: kSecondText,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Text(time)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      weatherIcon,
                      color: Colors.white,
                      size: 40,
                    ),
                    Text(
                      tempo,
                      style: kTemperatureText,
                    ),
                    Text(tempos)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}