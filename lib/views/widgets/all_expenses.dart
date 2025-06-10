import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expense_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_headers.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          AllExpensesHeaders(),
          AllExpensesItem(
            itemModel: AllExpenseItemModel(
              image: Assets.imagesIncome,
              title: 'Income',
              date: 'April,2025',
              price: r'$20,129',
            ),
          ),
        ],
      ),
    );
  }
}
