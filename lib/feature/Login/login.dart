import 'package:flutter/material.dart';
import 'package:training_app/feature/Login/widget/Login_body.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Login_body(),
    );
  }
}
