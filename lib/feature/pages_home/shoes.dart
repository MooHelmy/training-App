import 'package:flutter/material.dart';
import 'package:training_app/core/widgets/CuatomList.dart';

import '../../const/const.dart';

class shoespage extends StatelessWidget {
  const shoespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KmainScreencolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'shoes page',
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const customlist(
            image: 'assets/shopping.jpg',
            name: 'shoes',
            price: '250',
          );
        },
      ),
    );
  }
}
