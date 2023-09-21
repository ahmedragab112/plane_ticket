import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_style.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {this.colorOfInsideCicle = primary,
      this.colorOfOutsideCicle = Colors.white,
      super.key});
  final Color colorOfInsideCicle;
  final Color colorOfOutsideCicle;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: colorOfOutsideCicle,
      maxRadius: 5,
      child: CircleAvatar(
        backgroundColor: colorOfInsideCicle,
        maxRadius: 3,
      ),
    );
  }
}
