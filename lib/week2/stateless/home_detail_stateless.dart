// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_learn/week2/core/component/scroll/scroll_bar_single.dart';
import 'package:flutter_learn/week2/statefull/model/user.dart';

class HomeDetailStateless extends StatelessWidget {
  final User model;

  const HomeDetailStateless({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(model.title)),
        body: ScrollBarSingle(child:  Text(model.storyText)),
    );
  }
}
