import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 8,
        width: isActive ? 32 : 8,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: isActive ? Color(0xFF4DB7F2) : Colors.black,
        ),
      ),
    );
  }
}
