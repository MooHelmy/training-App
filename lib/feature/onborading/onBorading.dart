import 'package:flutter/material.dart';
import 'package:training_app/feature/onborading/widget/onBorading_body.dart';

class onBorading extends StatelessWidget {
  const onBorading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: onBorading_body(
        postion: 0,
      ),
    );
  }
}
