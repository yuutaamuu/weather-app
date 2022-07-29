import 'package:flutter/material.dart';
import 'package:mountain_weather/constant/text_constant.dart';
import 'package:mountain_weather/constant/color_constant.dart';

class searchBox extends StatelessWidget {
  const searchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: kInputText,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 4,
        ),
        hintText: "場所を検索してください",
        hintStyle: kInputText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Color(0xFF999999),
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.white,
            )),
      ),
    );
  }
}
