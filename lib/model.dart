import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Mountain {
  final int id;
  final String name;
  final String nameKana;
  final String area;
  final List<String> prefectures;
  final int elevation;
  final Map<String, dynamic> location;
  final List<String>? tags;

  Mountain({
    required this.id,
    required this.name,
    required this.nameKana,
    required this.area,
    required this.prefectures,
    required this.elevation,
    required this.location,
    this.tags,
  });

  factory Mountain.fromJson(Map<String, dynamic> json) => _$MountainFromJson(json);

  Map<String, dynamic> toJson() => _$MountainToJson(this);
}
