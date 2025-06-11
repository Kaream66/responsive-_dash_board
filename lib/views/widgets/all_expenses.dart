import 'package:flutter/material.dart';

import 'package:responsive_dash_board/views/widgets/all_expenses_headers.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_list_view.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeaders(),
          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
