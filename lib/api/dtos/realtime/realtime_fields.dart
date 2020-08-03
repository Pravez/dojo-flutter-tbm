import 'package:json_annotation/json_annotation.dart';

import '../geometry.dart';

part 'realtime_fields.g.dart';

@JsonSerializable(explicitToJson: true)
class RealtimeFields {
  final String arret;
  final String pmr;
  final String sae;
  final String bloque;
  final String etat;
  final DateTime mdate;
  final String rs_sv_cours_a;
  final int gid;
  final String sens;
  final String type;
  final String geom_o;
  final String statut;
  final DateTime cdate;
  final String rs_sv_ligne_a;
  final String rs_sv_chem_a;
  final int retard;
  final String terminus;
  final List<double> geo_point_2d;
  final int vitesse;
  final String localise;
  final String neutralise;

  RealtimeFields(
      this.arret,
      this.pmr,
      this.sae,
      this.bloque,
      this.etat,
      this.mdate,
      this.rs_sv_cours_a,
      this.gid,
      this.sens,
      this.type,
      this.geom_o,
      this.statut,
      this.cdate,
      this.rs_sv_ligne_a,
      this.rs_sv_chem_a,
      this.retard,
      this.terminus,
      this.geo_point_2d,
      this.vitesse,
      this.localise,
      this.neutralise);

  factory RealtimeFields.fromJson(Map<String, dynamic> json) => _$RealtimeFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$RealtimeFieldsToJson(this);
}
