import 'package:flutter/material.dart';
import 'package:ticket_booking_demo/utils/styles.dart';

class Tickets4Bar extends StatelessWidget {
  final Image image;
  final String number;
  final String second;
  final String visatext;
  final String third;
  const Tickets4Bar(
      {super.key,
      required this.number,
      required this.second,
      required this.third,
      required this.image, required this.visatext});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                image,
                Text(
                  visatext,
                  style: Styles.textStyle,
                ),
              ],
            ),
            Text(
              number,
              style: Styles.textStyle,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              second,
              style: Styles.textStyle,
            ),
            Text(
              third,
              style: Styles.textStyle,
            ),
          ],
        )
      ],
    );
  }
}
