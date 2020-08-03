import 'package:json_annotation/json_annotation.dart';

part 'geometry.g.dart';

@JsonSerializable(explicitToJson: true)
class Geometry {
  final String type;
  final List<double> coordinates;

  Geometry(this.type, this.coordinates);

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  Map<String, dynamic> toJson() => _$GeometryToJson(this);
}
