import 'package:flutter/material.dart';
import 'package:training_app/core/widgets/CuatomList.dart';

import '../../const/const.dart';

class shoespage extends StatelessWidget {
  const shoespage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'assets/shoes/1.jpeg',
      'assets/shoes/2.jpeg',
      'assets/shoes/3.jpeg',
      'assets/shoes/4.jpeg',
      'assets/shoes/5.jpeg',
      'assets/shoes/6.jpeg',
      'assets/shoes/7.jpeg',
    ];
    return Scaffold(
      backgroundColor: KmainScreencolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'shoes page',
        ),
      ),
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (context, index) {
          return customlist(
            image: image[index],
            name: 'shoes',
            price: '250',
          );
        },
      ),
    );
  }
}
