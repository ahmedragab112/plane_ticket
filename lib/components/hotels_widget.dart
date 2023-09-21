import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_style.dart';

import '../utils/app_layout.dart';

class HotelWidget extends StatelessWidget {
  const HotelWidget({
    this.city = 'London',
    required this.image,
    required this.price,
    required this.statu,
    super.key,
  });
  final String image;
  final String statu;
  final String price;
  final String city;
  @override
  Widget build(BuildContext context) {
    double width = SizeOfScreen.screenWidth(context);
    double hegiht = SizeOfScreen.screenHeight(context);
    return Container(
      margin: const EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Style.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      height: hegiht * .25,
      width: width * .6,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: hegiht * .2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            const Gap(10),
            Text(
              statu,
              style: Style.headLineStyle2.copyWith(color: Colors.grey),
            ),
            const Gap(5),
            Text(
              city,
              style: Style.headLineStyle3.copyWith(color: Colors.white),
            ),
            const Gap(5),
            Row(
              children: [
                const Icon(Icons.attach_money_outlined,
                    color: Colors.white, size: 30),
                Text(
                  price,
                  style: Style.headLineStyle2.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
