import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_dot.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({
    super.key,
    required this.currentPageIndex,
  });
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) =>
            CustomDot(isActive: index == currentPageIndex),
      ),
    );
  }
}
