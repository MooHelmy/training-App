import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../const/const.dart';

class dot_indicator extends StatelessWidget {
  const dot_indicator({super.key, @required this.postion});
  final double? postion;
  @override
  Widget build(Object context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: KmainScreencolor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(color: Colors.blue))),
      dotsCount: 3,
      position: postion!.toInt(),
    );
  }
}
