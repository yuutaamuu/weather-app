// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mountain _$MountainFromJson(Map<String, dynamic> json) => Mountain(
      id: json['id'] as int,
      name: json['name'] as String,
      nameKana: json['nameKana'] as String,
      area: json['area'] as String,
      prefectures: (json['prefectures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      elevation: json['elevation'] as int,
      location: json['location'] as Map<String, dynamic>,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$MountainToJson(Mountain instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameKana': instance.nameKana,
      'area': instance.area,
      'prefectures': instance.prefectures,
      'elevation': instance.elevation,
      'location': instance.location,
      'tags': instance.tags,
    };
