import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expense_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState
    extends State<AllExpensesItemListView> {
  final List<AllExpenseItemModel> items = [
    AllExpenseItemModel(
      image: Assets.imagesBalance,
      date: 'April, 2025',
      title: 'Balance',
      price: r'$20,129',
    ),
    AllExpenseItemModel(
      image: Assets.imagesIncome,
      date: 'April, 2025',
      title: 'Balance',
      price: r'$20,129',
    ),
    AllExpenseItemModel(
      image: Assets.imagesExpenses,
      date: 'April, 2025',
      title: 'Balance',
      price: r'$20,129',
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          items.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;

            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updatedIndex(index);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: index == 1 ? 12 : 0,
                  ),
                  child: AllExpensesItem(
                    itemModel: item,
                    isSelected: selectedIndex == index,
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }

  void updatedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
