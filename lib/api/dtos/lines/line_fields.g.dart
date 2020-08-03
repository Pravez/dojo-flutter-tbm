// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_fields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineFields _$LineFieldsFromJson(Map<String, dynamic> json) {
  return LineFields(
    json['nomcomli'] as String,
    json['nomcomch'] as String,
    (json['longchem'] as num)?.toDouble(),
    json['geo_shape'] == null
        ? null
        : GeoShape.fromJson(json['geo_shape'] as Map<String, dynamic>),
    json['sens'] as String,
  );
}

Map<String, dynamic> _$LineFieldsToJson(LineFields instance) =>
    <String, dynamic>{
      'nomcomli': instance.nomcomli,
      'nomcomch': instance.nomcomch,
      'longchem': instance.longchem,
      'geo_shape': instance.geo_shape?.toJson(),
      'sens': instance.sens,
    };
