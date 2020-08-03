// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_shape.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoShape _$GeoShapeFromJson(Map<String, dynamic> json) {
  return GeoShape(
    json['type'] as String,
    (json['coordinates'] as List)
        ?.map((e) => (e as List)?.map((e) => (e as num)?.toDouble())?.toList())
        ?.toList(),
  );
}

Map<String, dynamic> _$GeoShapeToJson(GeoShape instance) => <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
