import 'package:flutter/material.dart';

import '../../const/const.dart';

class custm_text extends StatelessWidget {
  const custm_text(
      {super.key,
      required this.hinttext,
      this.onSaved,
      this.icon,
      required this.lable});
  final String hinttext;

  final Function(String?)? onSaved;
  final IconData? icon;
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'enter the filed';
          }
        },
        onSaved: onSaved,
        decoration: InputDecoration(
          filled: true,
          label: Text(lable),
          fillColor: (Colors.white),
          hintText: hinttext,
          suffixIcon: Icon(
            icon,
            color: Colors.pink,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.blueAccent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.blueGrey)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.pinkAccent)),
        ),
      ),
    );
  }
}
