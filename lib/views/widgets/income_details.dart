import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/views/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static List items = [
    ItemDetailsModel(
      color: Color(0xff208CC8),
      title: 'service',
      value: '40%',
    ),
    ItemDetailsModel(
      color: Color(0xff4EB7F2),
      title: 'product',
      value: '25%',
    ),
    ItemDetailsModel(
      color: Color(0xff064061),
      title: 'royalti',
      value: '20%',
    ),
    ItemDetailsModel(
      color: Color(0xffE2DECD),
      title: 'Others',
      value: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(itemDetailsModel: items[index]);
      },
    );
  }
}
