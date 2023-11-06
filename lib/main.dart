// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_learn/week1/welcome/welcome_.view.dart';
import 'package:flutter_learn/week2/posts_json_place_holder/post_json_place_holder.dart';
import 'package:flutter_learn/week2/statefull/home_statefull_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      home: PostJsonPlaceHolder(),
    );  
  }
}