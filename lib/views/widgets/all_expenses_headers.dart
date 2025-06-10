import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesHeaders extends StatelessWidget {
  const AllExpensesHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(
            context,
          ),
        ),
        Expanded(child: SizedBox()),
        Container(
          padding: EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
              side: BorderSide(
                width: 1,
                color: Color(0xFFF1F1F1),
              ),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(
                  context,
                ),
              ),
              SizedBox(width: 18),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
