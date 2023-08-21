import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class page_view_item extends StatelessWidget {
  const page_view_item(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: SizeConfig.defaultSize! * 20,
                child: Image.asset(image)),
            SizedBox(height: SizeConfig.defaultSize! * 5),
            Text(title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: SizeConfig.defaultSize!),
            Text(subtitle,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(.2),
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
