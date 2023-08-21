import 'package:flutter/material.dart';
import 'package:training_app/Screens/Splah_view/widget/Splah_view_body.dart';

class Splah_view extends StatefulWidget {
  const Splah_view({super.key});

  @override
  State<Splah_view> createState() => _Splah_viewState();
}

class _Splah_viewState extends State<Splah_view> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff024B6C),
      body: Splah_view_body(),
    );
  }
}
