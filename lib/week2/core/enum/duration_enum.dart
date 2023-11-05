// ignore_for_file: prefer_const_constructors, dead_code, constant_identifier_names

import 'package:flutter_learn/week2/core/exception/duration_exception.dart';

enum DurationEnums{
  LOW,
  HIGH,
  NORMAL 
}

extension DurationEnumsExtension on DurationEnums{
  Duration get time{
    switch (this){
      case DurationEnums.HIGH:
        return Duration(seconds: 10);
        break;
      case DurationEnums.NORMAL:
        return Duration(seconds: 5);
        break;
      case DurationEnums.LOW:
        return Duration(seconds: 2);
        break;

      default:
        throw DurationException(this);
    }
  }
}