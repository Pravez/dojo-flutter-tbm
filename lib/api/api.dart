import 'dart:async';

import 'package:dojotbm/api/dtos/result.dart';
import 'package:dojotbm/api/parser.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _search_endpoint =
      "https://opendata.bordeaux-metropole.fr/api/records/1.0/search/";
  static const _lines_endpoint =
      "$_search_endpoint?dataset=tb_chem_l&q=&facet=nomcomli&facet=sens";
  static const _realtime_endpoint =
      "$_search_endpoint?dataset=sv_vehic_p&q=&facet=etat&facet=type&facet=statut&facet=sens&rows=50&refine.type=TRAM_LONG";

  static Future<Result> realtimeTraffic(String lineName) async =>
      _get<RealtimeParser>("$_realtime_endpoint");

  static Future<Result> line(String lineName) async => _get<LineParser>(
      "$_lines_endpoint&refine.nomcomli=${lineName.replaceAll(" ", "+")}");

  static Future<Result> _get<T>(String url) async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Parser.get(T).parse(response.body);
    } else {
      return Future.error(Error());
    }
  }
}
