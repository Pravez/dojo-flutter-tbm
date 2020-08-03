// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineRecord _$LineRecordFromJson(Map<String, dynamic> json) {
  return LineRecord(
    json['fields'] == null
        ? null
        : LineFields.fromJson(json['fields'] as Map<String, dynamic>),
    json['geometry'] == null
        ? null
        : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    json['record_timestamp'] == null
        ? null
        : DateTime.parse(json['record_timestamp'] as String),
  );
}

Map<String, dynamic> _$LineRecordToJson(LineRecord instance) =>
    <String, dynamic>{
      'fields': instance.fields?.toJson(),
      'geometry': instance.geometry?.toJson(),
      'record_timestamp': instance.record_timestamp?.toIso8601String(),
    };
