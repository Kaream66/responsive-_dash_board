import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expense_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_headers.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_list_view.dart';

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
          SizedBox(height: 16),
          Expanded(
            child: AllExpensesItemListView(),
          ),
        ],
      ),
    );
  }
}
