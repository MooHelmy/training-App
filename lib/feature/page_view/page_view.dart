import 'package:flutter/material.dart';
import 'package:training_app/core/widgets/page_view_item.dart';

class page_view extends StatelessWidget {
  const page_view({super.key, this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          page_view_item(
              image: 'assets/onboarding1.png',
              title: 'E shopping ',
              subtitle: 'Explore top organic & grap them '),
          page_view_item(
              image: 'assets/onboarding2.png',
              title: 'Delivery on the way ',
              subtitle: 'Get your order by speed delivery'),
          page_view_item(
              image: 'assets/onboarding3.png',
              title: 'Delivery arrived',
              subtitle: 'order is arrived at your place '),
        ],
      ),
    );
  }
}
