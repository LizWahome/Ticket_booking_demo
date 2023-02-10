import 'package:flutter/material.dart';
import 'package:ticket_booking_demo/utils/styles.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Book Tickets",
      style: Styles.headlineStyle,
    );
  }
}
