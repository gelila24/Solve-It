import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/shared/themes/app_theme.dart';
import 'package:solve/ui/widgets/custom_textfield.dart';
import 'package:solve/ui/widgets/rectangular_button.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
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
            padding: const EdgeInsets.only(left: 40, right: 40, top: 60),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Join Us",
                      style: AppTheme.titleStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 150,
                      child: const Text(
                        "ICare, You Care We all Care!",
                        style: AppTheme.titleStyle2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                hintText: "Enter Full name",
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              CustomTextField(
                hintText: "Enter Email",
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              CustomTextField(
                hintText: "Enter Phone number",
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              CustomTextField(
                hintText: "Enter Password",
                controller: _passwordController,
                rightIcon:
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                obscureText: !isPasswordVisible,
                onRightIconPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                  print("sett");
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              RectangularButton(
                  label: "Sign In", icons: Icons.login, onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Or continue with",
                  style: AppTheme.thinTextStyle,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: AppTheme.textFieldDecoration(),
                    child: Image.asset('assets/images/google.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: AppTheme.textFieldDecoration(),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Image.asset('assets/images/facebook.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: AppTheme.textFieldDecoration(),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Image.asset('assets/images/twitter.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already a member?",
                    style: AppTheme.thinTextStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.signin);
                    },
                    child: const Text(
                      "Log In",
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
