// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learn/week3/core/images/mage_constants.dart';
import 'package:flutter_learn/week3/core/localizate/application_strings.dart';

abstract class BaseStatefull<T extends StatefulWidget> extends State<T>{
  ApplicationStrings applicationStrings =ApplicationStrings.instance;

  TextTheme get textTheme => Theme.of(context).textTheme;
  ThemeData get theme => Theme.of(context);
  ColorScheme get colorScheme => Theme.of(context).colorScheme;
  ImageConstants imageConstants = ImageConstants.instance;
  EdgeInsets insetsAll = EdgeInsets.all(30);
  double dynamichHeight(double val) => MediaQuery.of(context).size.height * val;
}