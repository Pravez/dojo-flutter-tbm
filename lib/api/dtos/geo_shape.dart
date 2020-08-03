

import 'package:json_annotation/json_annotation.dart';

part 'geo_shape.g.dart';

@JsonSerializable(explicitToJson: true)
class GeoShape {
  final String type;
  final List<List<double>> coordinates;

  GeoShape(this.type, this.coordinates);

  factory GeoShape.fromJson(Map<String, dynamic> json) => _$GeoShapeFromJson(json);

  Map<String, dynamic> toJson() => _$GeoShapeToJson(this);
}