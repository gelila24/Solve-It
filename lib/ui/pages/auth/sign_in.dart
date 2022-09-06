import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/shared/themes/app_theme.dart';
import 'package:solve/ui/widgets/custom_textfield.dart';
import 'package:solve/ui/widgets/rectangular_button.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
            padding: const EdgeInsets.only(left: 40, right: 40, top: 100),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Welcome!",
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
                height: 40,
              ),
              CustomTextField(
                hintText: "Username or Email",
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: "Password",
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
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.forgotPassword);
                },
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: AppTheme.thinTextStyle,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 30,
              ),
              RectangularButton(
                  label: "Sign In", icons: Icons.login, onPressed: () {}),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Or continue with",
                  style: AppTheme.thinTextStyle,
                ),
              ),
              const SizedBox(
                height: 30,
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
                    "Not a member?",
                    style: AppTheme.thinTextStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.signup);
                    },
                    child: const Text(
                      "Register now",
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
