import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_style.dart';
import 'package:ticket_app/utils/rounded_contaniner.dart';

import '../components/ticket_widget.dart';
import '../constants/images.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = SizeOfScreen.screenWidth(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Tickets',
                    style: Style.headLineStyle1.copyWith(color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                ),
                Gap(SizeOfScreen.getHeight(30, context)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                            ),
                          ),
                          child: Text(
                            'Upcoming',
                            style: Style.headLineStyle3
                                .copyWith(fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  bottomRight: Radius.circular(40))),
                          child: Text(
                            'Previous',
                            style: Style.headLineStyle3
                                .copyWith(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(
                  SizeOfScreen.getHeight(20, context),
                ),
                Container(
                  height: SizeOfScreen.screenHeight(context) * .60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'NYC',
                            style: Style.headLineStyle3,
                          ),
                          const Spacer(),
                          const RoundedContainer(
                              colorOfInsideCicle: Colors.white,
                              colorOfOutsideCicle: Colors.blueAccent),
                          Expanded(
                            child: SizedBox(
                              height: 30,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  LayoutBuilder(
                                    builder: (context, constraints) => Flex(
                                      direction: Axis.horizontal,
                                      children: List.generate(
                                        (constraints.constrainWidth() / 7)
                                            .floor(),
                                        (index) => Text(
                                          '-',
                                          style: Style.headLineStyle3
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: 1.5,
                                    child: const Icon(
                                      Icons.airplanemode_active,
                                      color: Colors.blueAccent,
                                      size: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const RoundedContainer(
                              colorOfInsideCicle: Colors.white,
                              colorOfOutsideCicle: Colors.blueAccent),
                          const Spacer(),
                          Text(
                            'LND',
                            style: Style.headLineStyle3,
                          )
                        ],
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New-York',
                            style: Style.headLineStyle4,
                          ),
                          Text(
                            '8H 30M',
                            style: Style.headLineStyle4,
                          ),
                          Text(
                            'London',
                            style: Style.headLineStyle4,
                          )
                        ],
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      LayoutBuilder(
                        builder: (context, constraints) => Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            (constraints.constrainWidth() / 6).floor(),
                            (index) => const Text(
                              '-',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1 MAY',
                            style: Style.headLineStyle3,
                          ),
                          Text(
                            '08:00 AM',
                            style: Style.headLineStyle3.copyWith(fontSize: 20),
                          ),
                          Text(
                            '23',
                            style: Style.headLineStyle3,
                          )
                        ],
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      Row(
                        children: [
                          Text(
                            'Date',
                            style: Style.headLineStyle4,
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Text(
                            'Departure time',
                            style: Style.headLineStyle4,
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            'Number',
                            style: Style.headLineStyle4,
                          )
                        ],
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      LayoutBuilder(
                        builder: (context, constraints) => Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            (constraints.constrainWidth() / 6).floor(),
                            (index) => const Text(
                              '-',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ahmed Ragab',
                            style: Style.headLineStyle3,
                          ),
                          Text(
                            '3020 316230',
                            style: Style.headLineStyle3,
                          )
                        ],
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Passenger',
                            style: Style.headLineStyle4,
                          ),
                          Text(
                            'Passport',
                            style: Style.headLineStyle4,
                          ),
                        ],
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      LayoutBuilder(
                        builder: (context, constraints) => Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            (constraints.constrainWidth() / 6).floor(),
                            (index) => const Text(
                              '-',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '3721983 31278',
                            style: Style.headLineStyle3,
                          ),
                          Text(
                            'B2SP224',
                            style: Style.headLineStyle3,
                          )
                        ],
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Number of E-ticket',
                            style: Style.headLineStyle4,
                          ),
                          Text(
                            'Booking code',
                            style: Style.headLineStyle4,
                          ),
                        ],
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) => Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (constraints.constrainWidth() / 6).floor(),
                              (index) => const Text(
                                    '-',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                        ),
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      Row(
                        children: [
                          Image.asset(
                            Images.visa,
                            width: 50,
                          ),
                          Text(
                            ' *** 2462',
                            style: Style.headLineStyle3,
                          ),
                          const Spacer(),
                          Text(
                            '\$199.99',
                            style: Style.headLineStyle3,
                          ),
                        ],
                      ),
                      Gap(SizeOfScreen.getHeight(10, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Payment method',
                            style: Style.headLineStyle4,
                          ),
                          Text(
                            'Price',
                            style: Style.headLineStyle4,
                          ),
                        ],
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) => Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (constraints.constrainWidth() / 6).floor(),
                              (index) => const Text(
                                    '-',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                        ),
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: BarcodeWidget(
                            data: 'Ahmed Ragab',
                            barcode: Barcode.code128(),
                            drawText: false,
                            style: TextStyle(color: Style.textColor),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Gap(SizeOfScreen.getHeight(20, context)),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                  child: TicketWidget(
                    width: width,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            width: 30,
            bottom: 250,
            child: Container(
              width: 6,
              height: 15,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle,
              ),
              child: const RoundedContainer(
                colorOfInsideCicle: Colors.white,
                colorOfOutsideCicle: Colors.black,
              ),
            ),
          ),
          Positioned(
            width: 30,
            left: 365,
            top: 465,
            child: Container(
              width: 6,
              height: 15,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle,
              ),
              child: const RoundedContainer(
                colorOfInsideCicle: Colors.white,
                colorOfOutsideCicle: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
