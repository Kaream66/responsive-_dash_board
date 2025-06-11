import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expense_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView
    extends StatelessWidget {
  const AllExpensesItemListView({super.key});
  static List item = [
    AllExpenseItemModel(
      image: Assets.imagesBalance,
      date: 'April, 2025',
      title: 'Blance',
      price: r'$20,129',
    ),
    AllExpenseItemModel(
      image: Assets.imagesBalance,
      date: 'April, 2025',
      title: 'Blance',
      price: r'$20,129',
    ),
    AllExpenseItemModel(
      image: Assets.imagesBalance,
      date: 'April, 2025',
      title: 'Blance',
      price: r'$20,129',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: item.length,
      itemBuilder: (context, index) {
        return AllExpensesItem(
          itemModel: item[index],
        );
      },
    );
  }
}
