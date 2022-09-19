import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/shared/themes/app_theme.dart';
import 'package:solve/ui/widgets/custom_textfield.dart';
import 'package:solve/ui/widgets/custom_textfield2.dart';
import 'package:solve/ui/widgets/rectangular_button.dart';
import 'package:image_picker/image_picker.dart';

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
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundImage:
                              AssetImage("assets/images/deafult_pic.png"),
                          backgroundColor: Colors.transparent,
                        ),
                        Positioned(
                          bottom: 110,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppTheme.grey,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: (() {
                                showBottomSheet(
                                  context: context,
                                  builder: ((builder) => bottomSheet()),
                                );
                              }),
                              child: Icon(
                                Icons.edit,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        )
                      ],
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
                height: 15,
              ),
              CustomTextField2(
                label: "Company Name",
                hintText: "Jhondoe",
                controller: _nameController,
                keyboardType: TextInputType.name,
              ),
              CustomTextField2(
                label: "Tin No",
                hintText: "",
                controller: _tinNoCrontroller,
                keyboardType: TextInputType.number,
              ),
              CustomTextField2(
                label: "Phone Number",
                hintText: "",
                controller: _numbeCrontroller,
                keyboardType: TextInputType.number,
              ),
              CustomTextField2(
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
                      style: AppTheme.thinTextStyle
                          .copyWith(color: Color(0xff586AAA)),
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

  Widget bottomSheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(children: [
        Text(
          "Choose Profile Picture",
          style: AppTheme.bodyText2Bold,
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton.icon(
            onPressed: () {
              takePhoto(ImageSource.camera);
            },
            icon: Icon(
              Icons.camera,
              color: AppTheme.mainColor,
            ),
            label: Text(
              'Camera',
              style: AppTheme.normal2TextStyle,
            ),
          ),
          TextButton.icon(
            onPressed: () {
              takePhoto(ImageSource.gallery);
            },
            icon: Icon(
              Icons.image,
              color: AppTheme.mainColor,
            ),
            label: Text(
              'Gallery',
              style: AppTheme.normal2TextStyle,
            ),
          ),
        ])
      ]),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(source: source);
    setState(() {});
  }
}
