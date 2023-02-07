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
      height: AppLayout.getHeight(350),
      padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(17)),
      margin:  EdgeInsets.only(right: AppLayout.getWidth(17), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
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
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
              image: DecorationImage(image: AssetImage(hotel['image']),
              fit: BoxFit.cover
              )
            ),
          ),
           Gap(AppLayout.getHeight(10)),
          Text(hotel['destination'], style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor)),
           Gap(AppLayout.getHeight(5)),
          Text(hotel['place'],style: Styles.headlineStyle4.copyWith(color: Colors.white70),),
           Gap(AppLayout.getHeight(5)),
          Text("\$${hotel['price']}/night", style: Styles.headlineStyle.copyWith(color: Styles.kakiColor),)
        ],
      ),
      );
  }
}
