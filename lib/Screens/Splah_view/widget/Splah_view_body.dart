import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_app/core/utils/size_config.dart';
import 'package:training_app/feature/Login/login.dart';

import '../../../feature/onborading/onBorading.dart';
import '../../../feature/onborading/widget/onBorading_body.dart';

class Splah_view_body extends StatefulWidget {
  const Splah_view_body({super.key});

  @override
  State<Splah_view_body> createState() => _Splah_view_bodyState();
}

class _Splah_view_bodyState extends State<Splah_view_body>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadeinganimation;
  @override
  void initState() {
    super.initState();
    veiwdelay();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    fadeinganimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.defaultSize! * 20,
        ),
        FadeTransition(
          opacity: fadeinganimation!,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              "Shopping now",
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Image.asset(
          'assets/Capture.PNG',
        ),
      ],
    );
  }
}

void veiwdelay() {
  Future.delayed(Duration(seconds: 5), () {
    Get.to(() => onBorading(), transition: Transition.rightToLeft);
  });
}
