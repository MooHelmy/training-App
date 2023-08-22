import 'package:flutter/material.dart';

import '../../const/const.dart';
import '../../core/widgets/CuatomList.dart';

class laptops extends StatelessWidget {
  const laptops({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'assets/laptop_image/1.jpeg',
      'assets/laptop_image/2.jpeg',
      'assets/laptop_image/3.jpeg',
      'assets/laptop_image/4.jpeg',
      'assets/laptop_image/5.jpeg',
      'assets/laptop_image/6.jpeg',
      'assets/laptop_image/7.jpeg',
    ];
    return Scaffold(
      backgroundColor: KmainScreencolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'laptops page',
        ),
      ),
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (context, index) {
          return customlist(
            image: image[index],
            name: 'laptops',
            price: '7000',
          );
        },
      ),
    );
  }
}
