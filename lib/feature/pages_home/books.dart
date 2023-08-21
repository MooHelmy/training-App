import 'package:flutter/material.dart';
import 'package:training_app/const/const.dart';

import '../../core/widgets/CuatomList.dart';

class book extends StatelessWidget {
  const book({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KmainScreencolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'books page',
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const customlist(
            image: 'assets/shopping.jpg',
            name: 'books',
            price: '200',
          );
        },
      ),
    );
  }
}
