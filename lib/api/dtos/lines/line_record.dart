import 'package:dojotbm/api/dtos/lines/line_fields.dart';
import 'package:json_annotation/json_annotation.dart';

import '../geometry.dart';

part 'line_record.g.dart';

@JsonSerializable(explicitToJson: true)
class LineRecord {
  final LineFields fields;
  final Geometry geometry;
  final DateTime record_timestamp;

  LineRecord(this.fields, this.geometry,
      this.record_timestamp);

  factory LineRecord.fromJson(Map<String, dynamic> json) => _$LineRecordFromJson(json);

  Map<String, dynamic> toJson() => _$LineRecordToJson(this);
}
