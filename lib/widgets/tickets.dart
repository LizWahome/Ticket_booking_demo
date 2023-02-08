import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_demo/utils/app_layout.dart';
import 'package:ticket_booking_demo/utils/styles.dart';
import 'package:ticket_booking_demo/widgets/thick_container.dart';

class TicketsBar extends StatelessWidget {
  final String from;
  final String to;
  final String fCountry;
  final String tCountry;
  const TicketsBar(
      {super.key,
      required this.from,
      required this.to,
      required this.fCountry,
      required this.tCountry});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(from,
                style: Styles.textStyle),
            Expanded(child: Container()),
            const ThickContainer(color: Colors.lightBlueAccent),
            Expanded(
                child: Stack(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(24),
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            (constraints.constrainWidth() / 6).floor(),
                            (index) => const SizedBox(
                                  height: 1,
                                  width: 3,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.black)),
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
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                )
              ],
            )),
            const ThickContainer(color: Colors.lightBlueAccent),
            Expanded(child: Container()),
            Text(to, style: Styles.textStyle)
          ],
        ),
        Gap(AppLayout.getHeight(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: AppLayout.getWidth(100),
                child: Text(fCountry,
                    style:
                        Styles.textStyle)),
            Text("8H 30M",
                style: Styles.textStyle),
            SizedBox(
                width: AppLayout.getWidth(100),
                child: Text(tCountry,
                    textAlign: TextAlign.end,
                    style:
                        Styles.textStyle)),
          ],
        )
      ],
    );
  }
}
