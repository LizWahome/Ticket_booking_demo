import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_demo/utils/app_layout.dart';
import 'package:ticket_booking_demo/utils/styles.dart';
import 'package:ticket_booking_demo/widgets/divider_widget.dart';
import 'package:ticket_booking_demo/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket, required this.color1, required this.color2});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.9,
      height: AppLayout.getHeight(200),
      // height: size.height,
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //blue container
            Container(
              decoration: BoxDecoration(
                  color: color1,
                  //color: const Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['countryshort'],
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const ThickContainer(
                        color: Colors.white,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => const SizedBox(
                                            height: 1,
                                            width: 3,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white)),
                                          )),
                                );
                              },
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                      const ThickContainer(
                        color: Colors.white,
                      ),
                      Expanded(child: Container()),
                      Text(ticket['city'],
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white))
                    ],
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticket['countrylong'],
                              style: Styles.headlineStyle4
                                  .copyWith(color: Colors.white))),
                      Text(ticket['time'],
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white)),
                      SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticket['countrylong'],
                              textAlign: TextAlign.end,
                              style: Styles.headlineStyle4
                                  .copyWith(color: Colors.white))),
                    ],
                  )
                ],
              ),
            ),
            //orange container
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  const DividerWidget(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getWidth(10)),
                          bottomLeft: Radius.circular(AppLayout.getWidth(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: color2,
                  //color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(10),
                  bottom: AppLayout.getHeight(16),
                  right: AppLayout.getWidth(16),
                  left: AppLayout.getWidth(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticket['date'],
                              style: Styles.headlineStyle3
                                  .copyWith(color: Colors.white))),
                      Text(
                        ticket['dptime'],
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          "${ticket['number']}",
                          textAlign: TextAlign.end,
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          "Date",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        "Departure time",
                        style:
                            Styles.headlineStyle4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          "Number",
                          textAlign: TextAlign.end,
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
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
