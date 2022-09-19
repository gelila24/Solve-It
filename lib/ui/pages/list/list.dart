import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/shared/themes/app_theme.dart';
import 'package:solve/ui/widgets/action_button.dart';
import 'package:solve/ui/widgets/button_grid.dart';
import 'package:solve/ui/widgets/custom_textfield.dart';
import 'package:solve/ui/widgets/list_card.dart';
import 'package:solve/ui/widgets/rectangular_button.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
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
                          hintText: ('Search by Product Name, Batch No, ... '),
                          hintStyle: AppTheme.greySubtitleStyle,
                          // prefixIcon: const Icon(Icons.search),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: AppTheme.mainColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent",
                        style: AppTheme.titleStyle3,
                      ),
                      // InkWell(
                      //   onTap: () {},
                      //   child: Row(
                      //     children: [
                      //       Icon(Icons.filter_alt_outlined),
                      //       Text("Filter", style: AppTheme.titleStyle3),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        ListCard(),
                        SizedBox(height: 5),
                        ListCard(),
                        SizedBox(height: 5),
                        ListCard(),
                        SizedBox(height: 5),
                        ListCard(),
                        SizedBox(height: 5),
                        Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.more_horiz_outlined)),
                        SizedBox(height: 15)
                      ],
                    ),
                  ),
                  Text('Top Selling', style: AppTheme.titleStyle3),
                  SizedBox(height: 20),
                  Container(
                    child: Column(
                      children: [
                        ListCard(),
                        SizedBox(height: 5),
                        ListCard(),
                        SizedBox(height: 5),
                        ListCard(),
                        SizedBox(height: 5),
                        ListCard(),
                        SizedBox(height: 5),
                        Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.more_horiz_outlined)),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ],
    ));
  }
}
