import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_app/feature/Login/login.dart';

import '../../../const/const.dart';
import '../../../core/utils/size_config.dart';
import '../../../core/widgets/custm_text.dart';
import '../../../core/widgets/custom_button.dart';
import '../singin.dart';

class singin_body extends StatelessWidget {
  const singin_body({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey<FormState>();
    String? email, password;
    return Form(
      key: formState,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 22,
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 6,
            ),
            custm_text(
              hinttext: 'Enter your email',
              icon: Icons.email,
              lable: 'email',
              onSaved: (data) {
                email = data;
              },
            ),
            custm_text(
              hinttext: 'Enter your password',
              lable: 'Password',
              onSaved: (data) {
                password = data;
              },
              icon: Icons.lock,
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 5,
            ),
            custom_button(
              text: 'Sing in',
              onTap: () {
                if (formState.currentState!.validate()) {
                  formState.currentState!.save();
                  Get.to(
                    () => Login(),
                    transition: Transition.downToUp,
                    arguments: password,
                  );
                }
              },
              color: KmainScreencolor,
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  ' have account ? ',
                  style: TextStyle(fontSize: 20),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => Login(),
                      transition: Transition.downToUp,
                      arguments: password,
                    );
                  },
                  child: const Text(
                    'Login ',
                    style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
