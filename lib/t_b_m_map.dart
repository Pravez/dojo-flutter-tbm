import 'package:dojotbm/api/dtos/lines/line_record.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

import 'api/dtos/realtime/realtime_record.dart';

class TBMMap extends StatelessWidget {
  final List<RealtimeRecord> records;
  final List<LineRecord> line;

  TBMMap({this.records, this.line});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(44.8637834, -0.6211603),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c']),
        MarkerLayerOptions(markers: _buildMarkers()),
        PolylineLayerOptions(polylines: _buildPolylines())
      ],
    );
  }

  List<Marker> _buildMarkers() => records
      .map((e) => Marker(
          width: 20.0,
          height: 20.0,
          point: LatLng(e.fields.geo_point_2d[0], e.fields.geo_point_2d[1]),
          builder: (ctx) => Container(
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(7.0))),
                child: Text("T", textAlign: TextAlign.center,),
              )))
      .toList();

  List<Polyline> _buildPolylines() {
    return line
        .map((e) => Polyline(
            points: e.fields.geo_shape.coordinates
                .whereIndexed((index, element) => index % 10 == 0)
                .map((e) => LatLng(e[1], e[0]))
                .toList()))
        .toList();
  }
}

extension WhereIndexed on List {
  List whereIndexed(bool check(int index, dynamic element)) {
    final nList = [];
    for (var i = 0; i < this.length; ++i) {
      if (check(i, this[i])) nList.add(this[i]);
    }
    return nList;
  }
}
