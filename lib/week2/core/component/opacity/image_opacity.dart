// ignore_for_file: unused_field, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_learn/week2/core/enum/duration_enum.dart';
import 'package:flutter_learn/week2/core/image_manager.dart';

class ImageOpacity extends StatefulWidget {
  final String url;
  const ImageOpacity({super.key, required this.url});

  @override
  State<ImageOpacity> createState() => _ImageOpacityState();
}

class _ImageOpacityState extends State<ImageOpacity> {

  bool _isOpacity = true;

  @override
  void initState() {
    super.initState();
    waitForTime();
  }

  Future<void> waitForTime() async{
    await Future.delayed(DurationEnums.NORMAL.time);
    setState(() {
      _isOpacity = false;
    });
  }

  double get opacityValue => _isOpacity ? 0 : 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
              opacity: opacityValue,
              duration: DurationEnums.HIGH.time,
              child: Image.network(widget.url),
            );
  }
}