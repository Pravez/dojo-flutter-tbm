// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RealtimeRecord _$RealtimeRecordFromJson(Map<String, dynamic> json) {
  return RealtimeRecord(
    json['fields'] == null
        ? null
        : RealtimeFields.fromJson(json['fields'] as Map<String, dynamic>),
    json['geometry'] == null
        ? null
        : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    json['record_timestamp'] == null
        ? null
        : DateTime.parse(json['record_timestamp'] as String),
  );
}

Map<String, dynamic> _$RealtimeRecordToJson(RealtimeRecord instance) =>
    <String, dynamic>{
      'fields': instance.fields?.toJson(),
      'geometry': instance.geometry?.toJson(),
      'record_timestamp': instance.record_timestamp?.toIso8601String(),
    };
