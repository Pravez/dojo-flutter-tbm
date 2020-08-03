import 'dart:convert';

import 'dtos/lines/line_result.dart';
import 'dtos/realtime/realtime_result.dart';
import 'dtos/result.dart';

abstract class Parser {
  Result parse(String responseBody);

  factory Parser.get(Type type) {
    switch (type) {
      case RealtimeParser:
        return RealtimeParser();
      case LineParser:
        return LineParser();
    }
    throw Error();
  }
}

class RealtimeParser implements Parser {
  @override
  Result parse(String responseBody) =>
      RealtimeResult.fromJson(json.decode(responseBody));
}

class LineParser implements Parser {
  @override
  Result parse(String responseBody) =>
      LineResult.fromJson(json.decode(responseBody));
}
