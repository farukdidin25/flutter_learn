// ignore_for_file: unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learn/week3/core/theme/ITheme.dart';

class LightTheme extends ITheme{
  static LightTheme? _instance;
  static LightTheme get instance {
    if(_instance != null) return _instance!;
    _instance = LightTheme._init();
    return _instance!;
  }
  LightTheme._init();

  final ThemeData _lightTheme = ThemeData.light();
  
  @override
  ThemeData get data => ThemeData(
    appBarTheme: _lightTheme.appBarTheme.copyWith(
      backgroundColor: Colors.white,
    ),
  hintColor:Colors.green,
  textTheme: _lightTheme.textTheme.apply(bodyColor: colors.lynch),
    colorScheme: _lightTheme.colorScheme.copyWith(
      primary: Colors.white,
      onPrimary: colors.lynch,
      onSecondary: colors.catSkillWhite,
    )
  );

  
}