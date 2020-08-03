import 'package:dojotbm/api/dtos/lines/line_record.dart';
import 'package:json_annotation/json_annotation.dart';

import '../result.dart';

part 'line_result.g.dart';

@JsonSerializable(explicitToJson: true)
class LineResult implements Result {
  final List<LineRecord> records;

  LineResult(this.records);

  factory LineResult.fromJson(Map<String, dynamic> json) => _$LineResultFromJson(json);

  Map<String, dynamic> toJson() => _$LineResultToJson(this);
}
