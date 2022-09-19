import 'package:flutter/material.dart';
import 'package:solve/shared/themes/app_theme.dart';

class CustomTextField2 extends StatelessWidget {
  final IconData? rightIcon;
  final IconData? leftIcon;
  final String? label;
  final Function()? onRightIconPressed;
  final FormFieldValidator<String>? validator;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final BoxDecoration? decoration;
  const CustomTextField2(
      {Key? key,
      this.validator,
      this.label,
      required this.hintText,
      required this.controller,
      this.rightIcon,
      this.leftIcon,
      this.onRightIconPressed,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.decoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            label != null
                ? Text(
                    label!,
                    style: AppTheme.normalTextStyle,
                  )
                : SizedBox(),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              decoration: decoration ?? AppTheme.textFieldDecoration2(),
              child: TextFormField(
                  controller: controller,
                  obscureText: obscureText,
                  keyboardType: keyboardType,
                  validator: validator,
                  style: AppTheme.normalTextStyle,
                  decoration: AppTheme.textFieldInputDecoration().copyWith(
                    hintText: (hintText),
                    suffix: rightIcon != null
                        ? IconButton(
                            icon: Icon(rightIcon),
                            onPressed: onRightIconPressed ?? () {})
                        : null,
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    errorStyle:
                        AppTheme.greySubtitleStyle.copyWith(color: Colors.red),
                    prefix: leftIcon != null ? Icon(leftIcon) : null,
                  )),
            ),
          ],
        ));
  }
}
