import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/components/row_of_information.dart';
import 'package:ticket_app/utils/app_layout.dart';

import '../constants/images.dart';
import '../utils/app_style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(Images.planeImage),
                  ),
                ),
              ),
              Gap(SizeOfScreen.getWidth(10, context)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Book Tickets',
                        style: Style.headLineStyle1,
                      ),
                      const Gap(40),
                      Text(
                        'Edit',
                        style: Style.headLineStyle4,
                      ),
                    ],
                  ),
                  Text(
                    'New-York',
                    style: Style.headLineStyle4,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.shield,
                          color: primary,
                        ),
                        const Gap(5),
                        Text(
                          'Premium status',
                          style: Style.headLineStyle3,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          const Gap(30),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Icon(
                        Icons.lightbulb_circle,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    const Gap(10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You \'ve got a new award ',
                          style: Style.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'You have 150 flight in a year ',
                          style: Style.headLineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: -45,
                top: -90,
                child: Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue[900]!, width: 20),
                  ),
                ),
              )
            ],
          ),
          const Gap(30),
          Text(
            'Accmulated miles',
            style: Style.headLineStyle1,
          ),
          const Gap(20),
          const Center(
            child: Text(
              '9371238',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          const Gap(20),
          const RowOfInformation(
              color: Colors.grey, text1: 'Miles accrued', text2: '3 join 2023'),
          const Gap(40),
          const RowOfInformation(
              color: Colors.black, text1: '23078', text2: 'Airline EG'),
          const Gap(10),
          const RowOfInformation(
              color: Colors.grey, text1: 'Miles', text2: 'Recevied from'),
          const Gap(20),
          const RowOfInformation(
              color: Colors.black, text1: '24', text2: 'McDonal\'s'),
          const Gap(10),
          const RowOfInformation(
              color: Colors.grey, text1: 'Miles', text2: 'Recevied from'),
          const Gap(20),
          const RowOfInformation(
              color: Colors.black, text1: '52334', text2: 'Exuma'),
          const Gap(10),
          const RowOfInformation(
              color: Colors.grey, text1: 'Miles', text2: 'Recevied from'),
          const Gap(20),
          Center(
            child: Text(
              'How to get more miles ?',
              style: Style.headLineStyle2.copyWith(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
