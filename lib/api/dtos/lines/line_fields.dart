import 'package:dojotbm/api/dtos/geo_shape.dart';
import 'package:json_annotation/json_annotation.dart';


part 'line_fields.g.dart';

@JsonSerializable(explicitToJson: true)
class LineFields {
  final String nomcomli;
  final String nomcomch;
  final double longchem;
  final GeoShape geo_shape;
  final String sens;

  LineFields(this.nomcomli, this.nomcomch, this.longchem,
      this.geo_shape, this.sens);

  factory LineFields.fromJson(Map<String, dynamic> json) => _$LineFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$LineFieldsToJson(this);
}
