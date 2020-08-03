import 'dart:async';

import 'package:dojotbm/api/dtos/lines/line_record.dart';
import 'package:dojotbm/api/dtos/realtime/realtime_record.dart';
import 'package:dojotbm/tbm_map.dart';
import 'package:flutter/material.dart';

import 'api/api.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<RealtimeRecord> records = [];
  List<LineRecord> line = [];
  String selectedLine = "Tram A";

  AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    Timer.periodic(Duration(seconds: 5), (timer) => refreshData());
    getLine();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TBM Real-Time !"),
          actions: [
            IconButton(
              icon: AnimatedBuilder(
                animation: controller,
                child: Icon(Icons.refresh),
                builder: (ctx, w) => Transform.rotate(
                  angle: controller.value * 8,
                  child: w,
                ),
              ),
              onPressed: () => refreshData(),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: _buildDrawerTiles(),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: TBMMap(records: records, line: line),
              ),
            ].where((e) => e != null).toList(),
          ),
        ));
  }

  getLine() {
    Api.line(selectedLine).then((value) => this.setState(() {
          line = value.records;
        }));
  }

  refreshData() {
    controller.repeat();
    Api.realtimeTraffic(selectedLine).then((value) => this.setState(() {
          records = value.records;
          controller.forward();
        }));
  }

  changeLine(String newLine) {
    this.setState(() {
      selectedLine = newLine;
      getLine();
    });
    Navigator.pop(context);
  }

  List<Widget> _buildDrawerTiles() => <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text("Tram A"),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icon_tram_a.png"),
            backgroundColor: Colors.transparent,
          ),
          onTap: () => changeLine("Tram A"),
        ),
        ListTile(
          title: Text("Tram B"),
          leading: CircleAvatar(
              backgroundImage: AssetImage("assets/icon_tram_b.png"),
              backgroundColor: Colors.transparent),
          onTap: () => changeLine("Tram B"),
        ),
        ListTile(
          title: Text("Tram C"),
          leading: CircleAvatar(
              backgroundImage: AssetImage("assets/icon_tram_c.png"),
              backgroundColor: Colors.transparent),
          onTap: () => changeLine("Tram C"),
        ),
      ];
}
