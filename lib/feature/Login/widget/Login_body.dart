import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:training_app/core/utils/size_config.dart';
import 'package:training_app/core/widgets/custm_text.dart';
import 'package:training_app/core/widgets/custom_button.dart';
import 'package:training_app/feature/singin/singin.dart';

import '../../Homepage/Homepage.dart';

class Login_body extends StatelessWidget {
  const Login_body({super.key});

  @override
  Widget build(BuildContext context) {
    String? passwordl, passwordsin;

    GlobalKey<FormState> formState = GlobalKey<FormState>();
    return Form(
      key: formState,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 22,
            ),
            const Center(
              child: Text(
                "welcome  bake  Singin   \n          to continue",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 6,
            ),
            const custm_text(
                hinttext: 'Enter your email',
                icon: Icons.email,
                lable: 'email'),
            custm_text(
              hinttext: 'Enter your password',
              onSaved: (data) {
                passwordl = data!;
              },
              lable: 'Password',
              icon: Icons.lock,
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 5,
            ),
            custom_button(
              text: 'Login',
              onTap: () {
                if (formState.currentState!.validate()) {
                  formState.currentState!.save();
                  passwordsin =
                      ModalRoute.of(context)!.settings.arguments as String;
                  if (passwordsin == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('  Wrong password    ')));
                    Get.to(() => singin(), transition: Transition.upToDown);
                  }
                  passwordl == passwordsin
                      ? Get.to(() => Homepage(),
                          transition: Transition.upToDown)
                      : ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('  Wrong password    ')));
                }
              },
              color: Colors.blue,
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'don\'t have account ? ',
                  style: TextStyle(fontSize: 20),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => singin(), transition: Transition.zoom);
                  },
                  child: Text(
                    'Singin ',
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
