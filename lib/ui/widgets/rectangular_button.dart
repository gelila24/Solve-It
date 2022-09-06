import 'package:flutter/material.dart';
import 'package:solve/shared/themes/app_theme.dart';

class RectangularButton extends StatelessWidget {
  final String label;
  final IconData? icons;
  final Function() onPressed;
  final bool isActive;
  final bool isColorPrimary;
  const RectangularButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.icons,
    this.isActive = true,
    this.isColorPrimary = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onPressed : null,
      child: Container(
        width: double.maxFinite,
        height: 68,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: isColorPrimary || !isActive
            ? AppTheme.primaryColoredRectangularButtonDecoration()
            : AppTheme.nonPrimaryColoredRectangularButtonDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: AppTheme.buttonLabelStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(width: 5),
            Icon(icons),
          ],
        ),
      ),
    );
  }
}
