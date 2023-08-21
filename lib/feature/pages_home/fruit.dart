import 'package:flutter/material.dart';

import '../../const/const.dart';
import '../../core/widgets/CuatomList.dart';

class fruit extends StatelessWidget {
  const fruit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KmainScreencolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'fruit page',
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const customlist(
            image: 'assets/shopping.jpg',
            name: 'frut',
            price: '23',
          );
        },
      ),
    );
  }
}
