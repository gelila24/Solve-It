import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/shared/themes/app_theme.dart';
import 'package:solve/ui/widgets/action_button.dart';
import 'package:solve/ui/widgets/button_grid.dart';
import 'package:solve/ui/widgets/cart_card.dart';
import 'package:solve/ui/widgets/custom_textfield.dart';
import 'package:solve/ui/widgets/list_card.dart';
import 'package:solve/ui/widgets/rectangular_button.dart';

class CardPage extends StatefulWidget {
  CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
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
              padding: const EdgeInsets.only(left: 40, right: 40, top: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                      Center(
                        child: Text(
                          "Back",
                          style:
                              AppTheme.normal2TextStyle.copyWith(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Column(
                      children: [
                        CartCard(),
                        SizedBox(height: 25),
                        CartCard(),
                        SizedBox(height: 25),
                        CartCard(),
                        SizedBox(height: 25),
                        CartCard(),
                        SizedBox(height: 25),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      children: [
                        Text(
                          '0.00 Birr',
                          style: AppTheme.normalBold,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppTheme.mainColor2,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 4,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Text(
                            "Buy",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
      ],
    ));
  }
}
