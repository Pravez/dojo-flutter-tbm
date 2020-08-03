import 'package:json_annotation/json_annotation.dart';

import 'realtime_fields.dart';
import '../geometry.dart';

part 'realtime_record.g.dart';

@JsonSerializable(explicitToJson: true)
class RealtimeRecord {
  final RealtimeFields fields;
  final Geometry geometry;
  final DateTime record_timestamp;

  RealtimeRecord(this.fields, this.geometry,
      this.record_timestamp);

  factory RealtimeRecord.fromJson(Map<String, dynamic> json) => _$RealtimeRecordFromJson(json);

  Map<String, dynamic> toJson() => _$RealtimeRecordToJson(this);
}
