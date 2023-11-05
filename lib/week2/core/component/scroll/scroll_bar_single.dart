import 'package:flutter/material.dart';

class ScrollBarSingle extends StatelessWidget {
  const ScrollBarSingle({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scrollbar(child: SingleChildScrollView(child: child,));
  }
}