import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/mycard_and_transaction_history_section.dart';

class IncomeAndMyCardSection extends StatelessWidget {
  const IncomeAndMyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: MycardAndTransactionHistorySection(),
        ),
        SliverToBoxAdapter(child: IncomeSection()),
      ],
    );
  }
}
