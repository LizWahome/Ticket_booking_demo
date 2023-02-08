import 'package:flutter/material.dart';
import 'package:ticket_booking_demo/utils/app_layout.dart';
import 'package:ticket_booking_demo/utils/styles.dart';

class TicketsUpcomingView extends StatelessWidget {
  final String text1;
  final String text2;
  const TicketsUpcomingView({
    required this.text1,
    required this.text2,
    super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Row(
      children: [
        Container(
          //padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12)),
          height: AppLayout.getHeight(50),
          width: size.width * 0.44,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(10)),
                  bottomLeft: Radius.circular(AppLayout.getHeight(10)))),
          child: Center(
              child: Text(text1,
                  style:
                      Styles.headlineStyle4.copyWith(color: Colors.black54))),
        ),
        Container(
          //padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12)),
          height: AppLayout.getHeight(50),
          width: size.width * 0.44,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              //color: Colors.white.withOpacity(1),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppLayout.getHeight(10)),
                  bottomRight: Radius.circular(AppLayout.getHeight(10)))),
          child: Center(
              child: Text(text2,
                  style:
                      Styles.headlineStyle4.copyWith(color: Colors.black54))),
        ),
      ],
    );
  }
}
