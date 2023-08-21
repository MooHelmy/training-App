import 'package:flutter/material.dart';
import 'package:training_app/feature/Homepage/widget/Homepage_body.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Homepage_body(),
    );
  }
}
