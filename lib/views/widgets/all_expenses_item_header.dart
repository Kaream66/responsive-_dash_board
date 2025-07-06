import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.imageBackGroundColor,
    this.iconColor,
  });
  final String image;
  final Color? imageColor, imageBackGroundColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color:
                      imageBackGroundColor ?? Color(0xFFFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? Color(0xFF4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Icon(
          Icons.arrow_right_outlined,
          color: iconColor ?? Colors.black,
        ),
      ],
    );
  }
}
