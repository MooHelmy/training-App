import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_app/const/const.dart';
import 'package:training_app/core/widgets/custom_button.dart';
import 'package:training_app/feature/pages_home/books.dart';
import 'package:training_app/feature/pages_home/fruit.dart';
import 'package:training_app/feature/pages_home/laptops.dart';
import 'package:training_app/feature/pages_home/shoes.dart';

class Homepage_body extends StatelessWidget {
  const Homepage_body({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ['Frute', 'shoes', 'books', 'laptops'];
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 16, left: 16),
      child: GridView.builder(
        itemCount: names.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return custom_button(
            text: names[index],
            color: KmainScreencolor,
            onTap: () {
              if (index == 0) {
                Get.to(() => fruit(), transition: Transition.zoom);
              } else if (index == 1) {
                Get.to(() => shoespage(), transition: Transition.zoom);
              } else if (index == 2) {
                Get.to(() => book(), transition: Transition.zoom);
              } else {
                Get.to(() => laptops(), transition: Transition.zoom);
              }
            },
          );
        },
      ),
    );
  }
}
