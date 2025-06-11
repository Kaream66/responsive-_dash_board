import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expense_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});

  static List<AllExpenseItemModel> items = [
    AllExpenseItemModel(
      image: Assets.imagesBalance,
      date: 'April, 2025',
      title: 'Balance',
      price: r'$20,129',
    ),
    AllExpenseItemModel(
      image: Assets.imagesBalance,
      date: 'April, 2025',
      title: 'Balance',
      price: r'$20,129',
    ),
    AllExpenseItemModel(
      image: Assets.imagesBalance,
      date: 'April, 2025',
      title: 'Balance',
      price: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          items.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            if (index == 1) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(itemModel: item),
              );
            } else {
              return AllExpensesItem(itemModel: item);
            }
          }).toList(),
    );
  }
}
