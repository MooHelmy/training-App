import 'package:flutter/material.dart';
import 'package:training_app/const/const.dart';

import '../../core/widgets/CuatomList.dart';

class book extends StatelessWidget {
  const book({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'assets/books/1.jpeg',
      'assets/books/2.jpeg',
      'assets/books/3.jpeg',
      'assets/books/4.jpeg',
      'assets/books/5.jpeg',
      'assets/books/6.jpeg',
      'assets/books/7.jpeg'
    ];

    return Scaffold(
      backgroundColor: KmainScreencolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'books page',
        ),
      ),
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (context, index) {
          return customlist(
            image: image[index],
            name: 'books',
            price: '200',
          );
        },
      ),
    );
  }
}
