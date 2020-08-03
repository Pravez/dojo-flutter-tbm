import 'package:dojotbm/api/dtos/realtime/realtime_fields.dart';
import 'package:json_annotation/json_annotation.dart';

import 'realtime_record.dart';
import '../result.dart';

part 'realtime_result.g.dart';

@JsonSerializable(explicitToJson: true)
class RealtimeResult implements Result {
  final List<RealtimeRecord> records;

  RealtimeResult(this.records);

  factory RealtimeResult.fromJson(Map<String, dynamic> json) => _$RealtimeResultFromJson(json);

  Map<String, dynamic> toJson() => _$RealtimeResultToJson(this);
}
