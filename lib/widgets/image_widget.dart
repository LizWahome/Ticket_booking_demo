import 'package:flutter/material.dart';
import 'package:ticket_booking_demo/utils/app_layout.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //clipBehavior: Clip.antiAlias,
      height: AppLayout.getHeight(70),
      width: AppLayout.getWidth(70),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/flight-g43c7bbac2_1920.jpg"),
        ),
      ),
      //width: MediaQuery.of(context).size.width * 0.7,
    );
  }
}
