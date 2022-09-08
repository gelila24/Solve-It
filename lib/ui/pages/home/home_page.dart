import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/shared/themes/app_theme.dart';
import 'package:solve/ui/widgets/action_button.dart';
import 'package:solve/ui/widgets/button_grid.dart';
import 'package:solve/ui/widgets/custom_textfield.dart';
import 'package:solve/ui/widgets/rectangular_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        style: AppTheme.normalTextStyle,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ('Search'),
                          hintStyle: AppTheme.greySubtitleStyle
                              .copyWith(fontWeight: FontWeight.w400),
                          // prefixIcon: const Icon(Icons.search),
                          suffixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Catagory',
                    style: AppTheme.titleStyle3,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    child: ButtonGrid(buttons: [
                      ActionButton(
                        images: 'assets/images/syrup.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/tablet.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/equipment.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/cream.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/syrup.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/tablet.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/equipment.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/cream.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/syrup.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/tablet.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/equipment.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/cream.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/syrup.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/tablet.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/equipment.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                      ActionButton(
                        images: 'assets/images/cream.png',
                        title: Text('Syrup'),
                        imageSize: 100,
                        onTap: () {},
                      ),
                    ]),
                  )
                ],
              )),
        ),
      ],
    ));
  }
}
