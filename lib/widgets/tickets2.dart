import 'package:flutter/material.dart';
import 'package:ticket_booking_demo/utils/app_layout.dart';
import 'package:ticket_booking_demo/utils/styles.dart';

class Tickets2Bar extends StatelessWidget {
  final String date;
  final String dpTime;
  final int number;
  const Tickets2Bar({super.key, required this.date, required this.dpTime, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: AppLayout.getWidth(100),
                child: Text(date,
                    style:
                        Styles.textStyle)),
            Text(
              dpTime,
              style: Styles.textStyle,
            ),
            SizedBox(
              width: AppLayout.getWidth(100),
              child: Text(
                 number.toString(),
                textAlign: TextAlign.end,
                style: Styles.textStyle,
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
                style: Styles.textStyle,
              ),
            ),
            Text(
              "Departure time",
              style: Styles.textStyle,
            ),
            SizedBox(
              width: AppLayout.getWidth(100),
              child: Text(
                "Number",
                textAlign: TextAlign.end,
                style: Styles.textStyle,
              ),
            )
          ],
        )
      ],
    );
  }
}
