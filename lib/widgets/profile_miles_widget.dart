import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_demo/utils/app_layout.dart';
import 'package:ticket_booking_demo/utils/styles.dart';

class MilesWidget extends StatelessWidget {
  final String miles;
  final String rFrom;
  const MilesWidget({super.key, required this.miles, required this.rFrom});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              miles,
              style: Styles.textStyle,
            ),
            Text(
              rFrom,
              style: Styles.textStyle,
            )
          ],
        ),
        Gap(AppLayout.getHeight(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Miles",
              style: Styles.headlineStyle3,
            ),
            Text(
              "Received from",
              style: Styles.headlineStyle3,
            )
          ],
        )
      ],
    );
  }
}
