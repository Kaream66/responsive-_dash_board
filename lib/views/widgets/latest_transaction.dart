import 'package:flutter/material.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/latest_transactions_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transctions',
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(height: 24),

        LatestTransactionsListview(),
      ],
    );
  }
}
