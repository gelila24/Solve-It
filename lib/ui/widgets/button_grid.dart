import 'package:flutter/material.dart';

/// A grid of buttons composed of a column with rows as children
class ButtonGrid extends StatelessWidget {
  /// The buttons to display.
  final List<Widget> buttons;

  /// The number of logical pixels between each child along the main axis.
  final double mainAxisSpacing;

  /// The number of children in the cross axis.
  final int crossAxisCount;

  /// Padding to be applied on top of the grid
  final EdgeInsets padding;

  /// Creates a 2D array of buttons with a fixed number of tiles in
  /// the cross axis.
  const ButtonGrid(
      {Key? key,
      required this.buttons,
      this.mainAxisSpacing = 20.0,
      this.crossAxisCount = 2,
      this.padding = const EdgeInsets.symmetric(horizontal: 10)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Row> rows = List<Row>.generate(
      (buttons.length / crossAxisCount).ceil(),
      (i) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (crossAxisCount * i < buttons.length) buttons[crossAxisCount * i],
          if (crossAxisCount * i + 1 < buttons.length)
            buttons[crossAxisCount * i + 1]
          // else
          //   Container(width: 100),
          // if (crossAxisCount * i + 2 < buttons.length)
          //   buttons[crossAxisCount * i + 2]
          else
            Container(width: 100),
        ],
      ),
    );
    List<Widget> children = List<Widget>.generate(
      2 * rows.length - 1,
      (i) => (i % 2 == 0)
          ? rows[(i / 2).floor()]
          : SizedBox(height: mainAxisSpacing),
    );
    return Padding(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
