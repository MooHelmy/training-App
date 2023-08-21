import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:training_app/feature/page_view/page_view.dart';

import '../../../core/utils/size_config.dart';
import '../../../core/widgets/Custm_dotsindcator.dart';
import '../../../core/widgets/custom_buttons.dart';
import '../../Login/login.dart';

class onBorading_body extends StatefulWidget {
  const onBorading_body({super.key, required this.postion});
  final int postion;
  @override
  State<onBorading_body> createState() => _onBorading_bodyState();
}

PageController? pageController;

class _onBorading_bodyState extends State<onBorading_body> {
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {
          pageController?.page;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        page_view(
          pageController: pageController,
        ),
        Positioned(
            bottom: SizeConfig.defaultSize! * 22,
            right: 0,
            left: 0,
            child: dot_indicator(
                postion:
                    pageController!.hasClients ? pageController?.page : 0)),
        Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: 32,
          child: const Text(
            'Skip ',
            style: TextStyle(fontSize: 13, fontFamily: 'Poppins'),
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: const Text(
              'Skip ',
              style: TextStyle(fontSize: 13, fontFamily: 'Poppins'),
            ),
          ),
        ),
        Positioned(
            left: 80,
            right: 80,
            bottom: SizeConfig.defaultSize! * 10,
            child: Custom_general_buttob(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController!.nextPage(
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeIn);
                } else {
                  Get.to(() => Login(), transition: Transition.rightToLeft);
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'Get Start' : 'next')
                  : 'next',
            ))
      ],
    );
  }
}
