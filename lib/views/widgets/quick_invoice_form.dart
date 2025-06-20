import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/custom_button.dart';
import 'package:responsive_dash_board/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),

        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hint: 'Type item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(child: MyDropdown()),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'More details',
                textColor: Color(0xFF4EB7F2),
                backgroundcolor: Colors.transparent,
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton(text: 'Send money')),
          ],
        ),
      ],
    );
  }
}

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String? selectedValue;

  final List<String> items = [' USD', ' EURO', 'EGY'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Item mount',
          style: AppStyles.styleMedium16(context),
        ),
        Container(
          // padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFFAFAFA)),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: DropdownButton<String>(
            value: selectedValue,
            hint: Text('Select '),
            items:
                items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
            isExpanded: true,
          ),
        ),
      ],
    );
  }
}
