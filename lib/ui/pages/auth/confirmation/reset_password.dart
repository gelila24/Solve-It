import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/shared/themes/app_theme.dart';
import 'package:solve/ui/widgets/custom_textfield.dart';
import 'package:solve/ui/widgets/rectangular_button.dart';

class ResetPasswordPage extends StatefulWidget {
  ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _ConfirmPasswordController =
      TextEditingController();

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
                      "Finish reset",
                      style: AppTheme.titleStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
                      child: const Text(
                        "Enter a new password and don’t forget to write it down",
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
              Text('Enter new password', style: AppTheme.titleStyle4),
              CustomTextField(
                hintText: "Enter new password",
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
              CustomTextField(
                hintText: "Confirm new password",
                controller: _ConfirmPasswordController,
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
                height: 70,
              ),
              RectangularButton(label: "Reset", onPressed: () {}),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ]),
          ),
        ),
      ],
    ));
  }
}
