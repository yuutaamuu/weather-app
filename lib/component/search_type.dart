import 'package:flutter/material.dart';
import 'package:mountain_weather/constant/text_constant.dart';
import 'package:mountain_weather/constant/color_constant.dart';

class serachType extends StatelessWidget {
  const serachType(
      {required this.searchTitle, required this.data, required this.flag});

  final String searchTitle;
  final List data;
  final int flag;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              searchTitle,
              style: kSecondText,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Wrap(
            direction: Axis.horizontal,
            children: data
                .map((i) => TextButton(
                      onPressed: () {
                        int index = data.indexOf(i);
                        Navigator.pushNamed(context, '/searchResult',
                            arguments: {
                              "itemName": index + 1,
                            });
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                        minimumSize: MaterialStateProperty.all(Size.zero),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        i,
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
