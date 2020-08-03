// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineResult _$LineResultFromJson(Map<String, dynamic> json) {
  return LineResult(
    (json['records'] as List)
        ?.map((e) =>
            e == null ? null : LineRecord.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LineResultToJson(LineResult instance) =>
    <String, dynamic>{
      'records': instance.records?.map((e) => e?.toJson())?.toList(),
    };
