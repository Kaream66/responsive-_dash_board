import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/views/widgets/quick_ivoice_header.dart';
import 'package:responsive_dash_board/views/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48, color: Colors.blue),
          TitleTextField(
            title: 'Customer name',
            hint: 'Type customer name',
          ),
        ],
      ),
    );
  }
}
