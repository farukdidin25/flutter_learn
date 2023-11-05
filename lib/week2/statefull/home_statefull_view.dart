// ignore_for_file: unused_import, prefer_const_constructors, prefer_final_fields, unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_learn/week2/core/component/card/user_card.dart';
import 'package:flutter_learn/week2/core/component/opacity/image_opacity.dart';
import 'package:flutter_learn/week2/core/enum/duration_enum.dart';
import 'package:flutter_learn/week2/core/image_manager.dart';
import 'package:flutter_learn/week2/statefull/model/user.dart';
import 'package:flutter_learn/week2/stateless/home_detail_stateless.dart';

class HomeViewStatefull extends StatefulWidget {
  const HomeViewStatefull({super.key});

  @override
  State<HomeViewStatefull> createState() => _HomeViewStatefullState();
}

class _HomeViewStatefullState extends State<HomeViewStatefull> {
  bool _isLoading = true;
  late final ImageManager imageManager;
  late final User user;

  @override
  void initState() {
    super.initState();
    waitForLoading();
    imageManager = ImageManager();
    user = User.fakeItem();
  }

  Future<void> waitForLoading() async {
    await Future.delayed(DurationEnums.NORMAL.time);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            _isLoading ? CircularProgressIndicator() : FlutterLogo(),
            ImageOpacity(url: imageManager.randomImage),
            UserCard(
              user: user,
              onPressed: () {
                _navigateDetail();
              },
            ),
          ],
        ));
  }

  void _navigateDetail() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeDetailStateless(model: user)));
  }
}
