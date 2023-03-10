import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_demo/screens/hotel_view.dart';
import 'package:ticket_booking_demo/screens/ticket_view.dart';
import 'package:ticket_booking_demo/utils/app_info_list.dart';
import 'package:ticket_booking_demo/utils/app_layout.dart';
import 'package:ticket_booking_demo/utils/styles.dart';
import 'package:ticket_booking_demo/widgets/image_widget.dart';
import 'package:ticket_booking_demo/widgets/text_upcoming.dart';
import 'package:ticket_booking_demo/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: Styles.headlineStyle3),
                         Gap(AppLayout.getHeight(5)),
                        const TextWidget()
                        //Text("Book Tickets", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const ImageWidget()
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Container(
                  padding:
                       EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(12)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                    color: const Color(0xFFF4F5FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headlineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(35)),
               const UpcomingFlights(bText: 'Upcoming Flights', sText: 'View all',)
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(16)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: ticketList.map((e) => TicketView(ticket: e, color1: const Color(0xFF526799), color2: Styles.orangeColor,)).toList()
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: UpcomingFlights(bText: "Hotels", sText: "View all")
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(16)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: hotelList.map((e) => HotelView(hotel: e)).toList()
            ),
          ),
        ],
      ),
    );
  }
}
