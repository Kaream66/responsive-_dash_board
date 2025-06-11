import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expense_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
  });
  final AllExpenseItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: Assets.imagesBalance,
          ),
          SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16(
              context,
            ),
          ),
          SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14(
              context,
            ),
          ),
          SizedBox(height: 16),

          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(
              context,
            ),
          ),
        ],
      ),
    );
  }
}
