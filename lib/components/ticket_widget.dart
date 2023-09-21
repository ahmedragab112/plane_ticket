import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_style.dart';

import '../utils/rounded_contaniner.dart';

class TicketWidget extends StatelessWidget {
  const TicketWidget({required this.width, super.key});
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: primary,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        'NYC ',
                        style: Style.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      const RoundedContainer(),
                      Expanded(
                        child: SizedBox(
                          height: 24,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              LayoutBuilder(
                                builder: (context, constraints) => Flex(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  direction: Axis.horizontal,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 7).floor(),
                                    (index) {
                                      return Text(
                                        '-',
                                        style: Style.headLineStyle3
                                            .copyWith(color: Colors.white),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const RoundedContainer(),
                      const Spacer(),
                      Text('LND',
                          style: Style.headLineStyle3
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    children: [
                      Text(
                        'New-York',
                        style:
                            Style.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        '8H 30M',
                        style:
                            Style.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        'London',
                        style:
                            Style.headLineStyle4.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Style.ticketColor,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: LayoutBuilder(builder: (context, constraints) {
                            return Flex(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              direction: Axis.horizontal,
                              children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => const SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('1 MAY',
                                style: Style.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            const Spacer(),
                            Text('08:00 AM',
                                style: Style.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            const Spacer(),
                            Text('23',
                                style: Style.headLineStyle3
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                        const Gap(5),
                        Row(
                          children: [
                            Text(
                              'Date',
                              style: Style.headLineStyle4
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                            const Spacer(
                              flex: 3,
                            ),
                            Text('Departure time',
                                style: Style.headLineStyle4
                                    .copyWith(color: Colors.white),
                                textAlign: TextAlign.center),
                            const Spacer(
                              flex: 1,
                            ),
                            Text(
                              'Number',
                              style: Style.headLineStyle4
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
