import 'package:flutter/material.dart';
import 'package:solve/shared/themes/app_theme.dart';

/// A custom button with a rounded square icon and text at the bottom.
class ActionButton extends StatelessWidget {
  /// An icon to display in the center of the buttons square.
  final String images;

  final bool isEnabled;

  /// primary title content of the button
  /// displayed under the square container
  /// can have a maximum of two lines with overflow being replaced by dot-dot-dot
  final Widget title;
  final Widget description;

  /// the size of the button
  /// if this property is not set it defaults to 90
  final double size;

  /// the size of the icon
  /// if this property is not set it defaults to 32
  final double imageSize;

  /// Callback function to be triggered when button receives a tap gesture
  final VoidCallback? onTap;

  /// creates a custom UI button with a rounded square icon and button at its bottom
  /// the size of the button, if not explicitly set, defaults to 90
  ActionButton({
    Key? key,
    required this.images,
    required this.title,
    required this.description,
    this.isEnabled = true,
    this.size = 130,
    this.imageSize = 50,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isEnabled ? Colors.white : Colors.grey.withOpacity(0.2),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      color: AppTheme.shadowColorLight,
                      blurRadius: 20,
                      offset: Offset(0, 0),
                      spreadRadius: 0),
                ],
              ),
              height: 140,
              width: 140,
              child: Center(
                child: Container(
                  height: 120,
                  child: FittedBox(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                            width: imageSize,
                            height: imageSize,
                            child: Image.asset(images)),
                        DefaultTextStyle(
                          child: this.title,
                          style: isEnabled
                              ? AppTheme.bodyText2.copyWith(
                                  wordSpacing: 3,
                                  color: AppTheme.mainColor,
                                )
                              : AppTheme.bodyText2
                                  .copyWith(color: Colors.grey, wordSpacing: 3),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        DefaultTextStyle(
                          child: this.description,
                          style: isEnabled
                              ? AppTheme.bodyText2.copyWith(
                                  wordSpacing: 3, color: AppTheme.mainColor)
                              : AppTheme.bodyText2
                                  .copyWith(color: Colors.grey, wordSpacing: 3),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
