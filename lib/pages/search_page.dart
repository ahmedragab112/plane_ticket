import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/components/airline_container.dart';
import 'package:ticket_app/constants/images.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_style.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hight = SizeOfScreen.screenHeight(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Gap(hight * .05),
          Text(
            'What are \n you looking for?',
            style: Style.headLineStyle1
                .copyWith(color: Colors.black, fontSize: 40),
          ),
          Gap(hight * .03),
          Row(
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
                    'Airline Tickets',
                    style: Style.headLineStyle3.copyWith(color: Colors.black),
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
                    'Hotels',
                    style: Style.headLineStyle3.copyWith(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          Gap(hight * .02),
          const AirlineContainer(
            icon: Icons.flight_takeoff,
            text: 'Departure',
          ),
          Gap(
            hight * .03,
          ),
          const AirlineContainer(
            icon: Icons.flight_land,
            text: 'Arrival',
          ),
          Gap(hight * .03),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                color: Colors.blueAccent[700],
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              'Find tickets ',
              style: Style.headLineStyle3.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Gap(hight * .05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upcoming Flights',
                style: Style.headLineStyle1,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'View all',
                  style: TextStyle(color: Style.primaryColor),
                ),
              )
            ],
          ),
          Gap(hight * .05),
          SizedBox(
            height: SizeOfScreen.getHeight(450, context),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 15),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: SizeOfScreen.getHeight(200, context),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Images.planeImage2),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Gap(SizeOfScreen.getHeight(10, context)),
                          Text(
                            "20%\ndiscount on the early booking of this flight Don't miss ",
                            style: Style.headLineStyle1.copyWith(fontSize: 25),
                          ),
                        ],
                      )),
                ),
                Gap(SizeOfScreen.getWidth(20, context)),
                Expanded(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff32afb0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Discount\nfor survery',
                                  style: Style.headLineStyle2
                                      .copyWith(color: Colors.white),
                                ),
                                Gap(SizeOfScreen.getHeight(5, context)),
                                Text(
                                  'Take the survery\nabout our\nservices and get discount',
                                  style: Style.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: -45,
                            top: -40,
                            child: Container(
                              padding: const EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 18,
                                      color: const Color(0xff189999))),
                            ),
                          ),
                        ],
                      ),
                      Gap(SizeOfScreen.getHeight(20, context)),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(18),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color(0xffea5b3c),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Text(
                                'Take love',
                                style: Style.headLineStyle1
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(SizeOfScreen.getHeight(20, context)),
                              Expanded(
                                child: RichText(
                                    text: const TextSpan(children: [
                                  TextSpan(
                                      text: '😍',
                                      style: TextStyle(fontSize: 35),),
                                  TextSpan(
                                      text: '🥰',
                                      style: TextStyle(fontSize: 35),),
                                  TextSpan(
                                      text: '😘',
                                      style: TextStyle(fontSize: 35),)
                                ])),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
