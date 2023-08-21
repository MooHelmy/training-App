import 'package:flutter/material.dart';

import '../../const/const.dart';
import '../../core/widgets/CuatomList.dart';

class laptops extends StatelessWidget {
  const laptops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KmainScreencolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'laptops page',
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const customlist(
            image: 'assets/shopping.jpg',
            name: 'laptops',
            price: '7000',
          );
        },
      ),
    );
  }
}
