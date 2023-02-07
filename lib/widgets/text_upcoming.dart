import 'package:flutter/material.dart';
import 'package:ticket_booking_demo/utils/styles.dart';

class UpcomingFlights extends StatelessWidget {
  final String bText;
  final String sText;
  const UpcomingFlights({
    required this.bText,
    required this.sText,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bText,
          style: Styles.headlineStyle2,
        ),
        InkWell(
            onTap: () {},
            child: Text(sText,
                style: Styles.textStyle.copyWith(color: Styles.primaryColor)))
      ],
    );
  }
}
