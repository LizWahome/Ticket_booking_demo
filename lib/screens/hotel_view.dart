import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_demo/utils/app_layout.dart';
import 'package:ticket_booking_demo/utils/styles.dart';

class HotelView extends StatelessWidget {
   final Map<String, dynamic> hotel;
  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: AssetImage(hotel['image']),
              fit: BoxFit.cover
              )
            ),
          ),
          const Gap(10),
          Text(hotel['destination'], style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor)),
          const Gap(5),
          Text(hotel['place'],style: Styles.headlineStyle4.copyWith(color: Colors.white70),),
          const Gap(5),
          Text("\$${hotel['price']}/night", style: Styles.headlineStyle.copyWith(color: Styles.kakiColor),)
        ],
      ),
      );
  }
}
