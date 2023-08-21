import 'package:flutter/material.dart';

import '../../const/const.dart';
import '../utils/size_config.dart';

class Custom_general_buttob extends StatelessWidget {
  const Custom_general_buttob({super.key, required this.text, this.onTap});
  final Function()? onTap;
  final String text;

  @override
  Widget build(Object context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 60,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: KmainScreencolor),
          child: Center(
              child: Text(
            text,
            style: const TextStyle(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
          ))),
    );
  }
}
