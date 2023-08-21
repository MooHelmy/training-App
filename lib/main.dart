import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/Splah_view/Splah_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Splah_view(),
    );
  }
}
