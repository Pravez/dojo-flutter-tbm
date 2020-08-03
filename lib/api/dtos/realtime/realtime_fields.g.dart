// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime_fields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RealtimeFields _$RealtimeFieldsFromJson(Map<String, dynamic> json) {
  return RealtimeFields(
    json['arret'] as String,
    json['pmr'] as String,
    json['sae'] as String,
    json['bloque'] as String,
    json['etat'] as String,
    json['mdate'] == null ? null : DateTime.parse(json['mdate'] as String),
    json['rs_sv_cours_a'] as String,
    json['gid'] as int,
    json['sens'] as String,
    json['type'] as String,
    json['geom_o'] as String,
    json['statut'] as String,
    json['cdate'] == null ? null : DateTime.parse(json['cdate'] as String),
    json['rs_sv_ligne_a'] as String,
    json['rs_sv_chem_a'] as String,
    json['retard'] as int,
    json['terminus'] as String,
    (json['geo_point_2d'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    json['vitesse'] as int,
    json['localise'] as String,
    json['neutralise'] as String,
  );
}

Map<String, dynamic> _$RealtimeFieldsToJson(RealtimeFields instance) =>
    <String, dynamic>{
      'arret': instance.arret,
      'pmr': instance.pmr,
      'sae': instance.sae,
      'bloque': instance.bloque,
      'etat': instance.etat,
      'mdate': instance.mdate?.toIso8601String(),
      'rs_sv_cours_a': instance.rs_sv_cours_a,
      'gid': instance.gid,
      'sens': instance.sens,
      'type': instance.type,
      'geom_o': instance.geom_o,
      'statut': instance.statut,
      'cdate': instance.cdate?.toIso8601String(),
      'rs_sv_ligne_a': instance.rs_sv_ligne_a,
      'rs_sv_chem_a': instance.rs_sv_chem_a,
      'retard': instance.retard,
      'terminus': instance.terminus,
      'geo_point_2d': instance.geo_point_2d,
      'vitesse': instance.vitesse,
      'localise': instance.localise,
      'neutralise': instance.neutralise,
    };
