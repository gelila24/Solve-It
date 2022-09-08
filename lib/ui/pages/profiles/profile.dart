import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/shared/themes/app_theme.dart';
import 'package:solve/ui/widgets/custom_textfield.dart';
import 'package:solve/ui/widgets/rectangular_button.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numbeCrontroller = TextEditingController();
  final TextEditingController _tinNoCrontroller = TextEditingController();

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
                    Text('profile'),
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
              CustomTextField(
                label: "Company Name",
                hintText: "Jhondoe",
                controller: _nameController,
                keyboardType: TextInputType.name,
              ),
              CustomTextField(
                label: "Tin No",
                hintText: "",
                controller: _tinNoCrontroller,
                keyboardType: TextInputType.number,
              ),
              CustomTextField(
                label: "Phone Number",
                hintText: "",
                controller: _numbeCrontroller,
                keyboardType: TextInputType.number,
              ),
              CustomTextField(
                label: "Email",
                hintText: "jhondoe@gmail.com",
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.changePassword);
                },
                child: Row(
                  children: [
                    Text(
                      'Change Password',
                      style: AppTheme.thinTextStyle,
                    ),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],
    ));
  }
}
