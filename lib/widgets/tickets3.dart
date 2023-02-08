import 'package:flutter/material.dart';
import 'package:ticket_booking_demo/utils/styles.dart';

class Tickets3Bar extends StatelessWidget {
  final String first;
  final String number;
  final String second;
  final String third;
  const Tickets3Bar({super.key, required this.first, required this.number, required this.second, required this.third});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(first, style: Styles.textStyle,),
            Text(number, style: Styles.textStyle,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(second, style: Styles.textStyle,),
            Text(third, style: Styles.textStyle,),
          ],
        )
      ],
    );
  }
}
