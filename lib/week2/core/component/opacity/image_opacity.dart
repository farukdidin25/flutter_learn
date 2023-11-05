// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_learn/week2/core/enum/duration_enum.dart';
import 'package:flutter_learn/week2/core/image_manager.dart';

class ImageOpacity extends StatefulWidget {
  final ImageManager manager;
  const ImageOpacity({super.key, required this.manager});

  @override
  State<ImageOpacity> createState() => _ImageOpacityState();
}

class _ImageOpacityState extends State<ImageOpacity> {

  bool _isOpacity = false;

  @override
  void initState() {
    super.initState();
    
  }

  Future<void> waitForTime() async{
    await Future.delayed(DurationEnums.NORMAL.time);
    setState(() {
      _isOpacity = true;
    });
  }

  double get opacityValue => _isOpacity ? 0 : 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
              opacity: _isOpacity ? 0: 1,
              duration: DurationEnums.HIGH.time,
              child: Image.network(widget.manager.randomImage),
            );
  }
}