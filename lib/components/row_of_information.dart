import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_style.dart';

class RowOfInformation extends StatelessWidget {
  const RowOfInformation(
      {required this.color,
      required this.text1,
      required this.text2,
      super.key});

  final String text1;
  final String text2;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: Style.headLineStyle3.copyWith(color: color),
        ),
        Text(text2, style: Style.headLineStyle3.copyWith(color: color))
      ],
    );
  }
}
