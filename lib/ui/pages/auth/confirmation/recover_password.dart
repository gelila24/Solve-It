import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/shared/themes/app_theme.dart';
import 'package:solve/ui/widgets/custom_textfield.dart';
import 'package:solve/ui/widgets/rectangular_button.dart';

class RecoverPasswordPage extends StatefulWidget {
  RecoverPasswordPage({Key? key}) : super(key: key);

  @override
  State<RecoverPasswordPage> createState() => _RecoverPasswordPageState();
}

class _RecoverPasswordPageState extends State<RecoverPasswordPage> {
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _forgotEmailController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 100),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Code Sent",
                      style: AppTheme.titleStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
                      child: const Text(
                        "A 5 digit code has been sent to +251-912-345-678",
                        style: AppTheme.titleStyle3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 70,
              ),
              Text('Enter Code', style: AppTheme.titleStyle4),
              CustomTextField(
                hintText: "Enter code",
                controller: _codeController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 30,
              ),
              RectangularButton(
                  label: "Submit",
                  onPressed: () {
                    Get.toNamed(Routes.resetPassword);
                  }),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Return to",
                    style: AppTheme.thinTextStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.signin);
                    },
                    child: const Text(
                      "Log In page",
                      style: AppTheme.buttonLabelStyle2,
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ],
    ));
  }
}
