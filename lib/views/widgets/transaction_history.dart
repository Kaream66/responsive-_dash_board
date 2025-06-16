import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 15),
        Text(
          '13 April2025',
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xFFAAAAAA)),
        ),
        SizedBox(height: 16),

        TransactionHistoryListView(),
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(
            context,
          ).copyWith(color: Colors.black),
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xFF4DB7F2)),
        ),
      ],
    );
  }
}
 // ListTile(
        //   title: Text(
        //     'Transaction History',
        //     style: AppStyles.styleSemiBold20(
        //       context,
        //     ).copyWith(color: Colors.black),
        //   ),
        //   subtitle: Text(
        //     '13 April 2022',
        //     style: AppStyles.styleMedium16(context),
        //   ),
        //   trailing: Text(
        //     'See all',
        //     style: AppStyles.styleMedium16(
        //       context,
        //     ).copyWith(color: Colors.blue),
        //   ),
        // ),