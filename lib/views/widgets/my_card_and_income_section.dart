import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/mycard_and_transaction_history_section.dart';

class MyCradAndIncomeSection extends StatelessWidget {
  const MyCradAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      //  physics: NeverScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: MycardAndTransactionHistorySection(),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: IncomeSection()),
      ],
    );
  }
}
