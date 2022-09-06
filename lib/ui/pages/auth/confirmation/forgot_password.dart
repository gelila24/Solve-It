import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/shared/themes/app_theme.dart';
import 'package:solve/ui/widgets/custom_textfield.dart';
import 'package:solve/ui/widgets/rectangular_button.dart';

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _phoneController = TextEditingController();
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
            padding: const EdgeInsets.only(left: 40, right: 40, top: 140),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Forgot password?",
                      style: AppTheme.titleStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 320,
                      child: const Text(
                        "Don’t worry! It happens. Please enter your phone number associated with you account",
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
              CustomTextField(
                hintText: "Enter Phone number",
                controller: _phoneController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 30,
              ),
              RectangularButton(
                  label: "Send",
                  onPressed: () {
                    Get.toNamed(Routes.recoverPassword);
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
