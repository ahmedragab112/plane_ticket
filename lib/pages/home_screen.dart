// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/components/hotels_widget.dart';
import 'package:ticket_app/constants/images.dart';
import 'package:ticket_app/utils/app_style.dart';

import '../components/ticket_widget.dart';
import '../utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Widget> list = [
    HotelWidget(
        image: Images.firstHotel, price: '25/Night', statu: 'Open Space'),
    HotelWidget(
      image: Images.dubai,
      price: '40/Night',
      statu: 'Global Will ',
    ),
    HotelWidget(
      image: Images.hotel,
      price: '30/Night',
      statu: 'Tallest Builiding',
      city: 'Doubi',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double width = SizeOfScreen.screenWidth(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          const Gap(40),
          Container(
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Style.headLineStyle4,
                        ),
                        Gap(SizeOfScreen.getHeight(5, context)),
                        Text('Book Tickets', style: Style.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(Images.planeImage),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
                Gap(SizeOfScreen.getHeight(20, context)),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6f0),
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.search),
                      Gap(SizeOfScreen.getWidth(10, context)),
                      const Text('Search'),
                    ],
                  ),
                ),
                Gap(SizeOfScreen.getHeight(40, context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Flights',
                      style: Style.headLineStyle1,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('the button has been taped');
                      },
                      child: Text(
                        'View all',
                        style: TextStyle(color: Style.primaryColor),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: width,
            child:  SingleChildScrollView(
              padding: EdgeInsets.only(left: 16),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [TicketWidget(width: width*.85,), TicketWidget(width:  width*.85,)],
              ),
            ),
          ),
          Gap(SizeOfScreen.getHeight(20, context)),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: Style.headLineStyle1,
                ),
                GestureDetector(
                  onTap: () {
                    print('the button has been taped');
                  },
                  child: Text(
                    'View all',
                    style: TextStyle(color: Style.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          Gap(SizeOfScreen.getHeight(15, context)),
          SizedBox(
            height: 300,
            child: ListView.separated(
              itemCount: list.length,
              separatorBuilder: (context, index) =>
                  Gap(SizeOfScreen.getWidth(20, context)),
              itemBuilder: (context, index) => list[index],
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
          )
        ],
      ),
    );
  }
}
