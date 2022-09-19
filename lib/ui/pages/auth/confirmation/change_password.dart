import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/shared/themes/app_theme.dart';
import 'package:solve/ui/widgets/custom_textfield.dart';
import 'package:solve/ui/widgets/custom_textfield2.dart';
import 'package:solve/ui/widgets/rectangular_button.dart';

class ChangePasswordPage extends StatefulWidget {
  ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final TextEditingController _currentPasswordController =
      TextEditingController();
  final TextEditingController _ConfirmPasswordController =
      TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();

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
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.navigate_before,
                            size: 30,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Profile",
                            style: AppTheme.normal2TextStyle
                                .copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 80,
                      backgroundImage:
                          AssetImage("assets/images/deafult_pic.png"),
                      backgroundColor: Colors.transparent,
                    ),
                    Text(
                      'John Doe',
                      style: AppTheme.titleStyle3,
                    ),
                    Text(
                      '@jhondoe',
                      style: AppTheme.hintTextStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField2(
                hintText: "Current password",
                controller: _currentPasswordController,
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
              CustomTextField2(
                hintText: "New password",
                controller: _newPasswordController,
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
              CustomTextField2(
                hintText: "Confirm  password",
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
              SizedBox(
                height: 100,
              ),
              Container(
                width: double.maxFinite,
                height: 68,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.mainColor2,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Change Password",
                      style: AppTheme.buttonLabelStyle
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              )
            ]),
          ),
        ),
      ],
    ));
  }
}
