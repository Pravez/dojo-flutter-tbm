// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RealtimeResult _$RealtimeResultFromJson(Map<String, dynamic> json) {
  return RealtimeResult(
    (json['records'] as List)
        ?.map((e) => e == null
            ? null
            : RealtimeRecord.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RealtimeResultToJson(RealtimeResult instance) =>
    <String, dynamic>{
      'records': instance.records?.map((e) => e?.toJson())?.toList(),
    };
