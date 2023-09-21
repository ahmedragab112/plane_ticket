import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_style.dart';

class AirlineContainer extends StatelessWidget {
  const AirlineContainer({required this.icon, required this.text, super.key});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          Gap(5),
          Text(
            text,
            style: Style.headLineStyle3.copyWith(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
