import 'package:flutter/material.dart';

import '../../const/const.dart';
import '../../core/widgets/CuatomList.dart';

class fruit extends StatelessWidget {
  const fruit({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'assets/fruits/1.jpeg',
      'assets/fruits/2.jpeg',
      'assets/fruits/3.jpeg',
      'assets/fruits/4.jpeg',
      'assets/fruits/5.jpeg',
      'assets/fruits/6.jpeg',
    ];
    return Scaffold(
      backgroundColor: KmainScreencolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'fruit page',
        ),
      ),
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (context, index) {
          return customlist(
            image: image[index],
            name: 'frut',
            price: '23',
          );
        },
      ),
    );
  }
}
