import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader
    extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xFFFAFAFA),
          ),
          child: Center(
            child: SvgPicture.asset(image),
          ),
        ),
        Expanded(child: SizedBox()),
        Icon(Icons.arrow_right_outlined),
      ],
    );
  }
}
