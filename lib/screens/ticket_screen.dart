import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_demo/screens/ticket_view.dart';
import 'package:ticket_booking_demo/utils/app_info_list.dart';
import 'package:ticket_booking_demo/utils/app_layout.dart';
import 'package:ticket_booking_demo/utils/styles.dart';
import 'package:ticket_booking_demo/widgets/divider_widget.dart';
import 'package:ticket_booking_demo/widgets/tickets.dart';
import 'package:ticket_booking_demo/widgets/tickets2.dart';
import 'package:ticket_booking_demo/widgets/tickets3.dart';
import 'package:ticket_booking_demo/widgets/tickets_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(AppLayout.getHeight(30)),
                    Text(
                      "Tickets",
                      style: Styles.headlineStyle5,
                    ),
                    Gap(AppLayout.getHeight(15)),
                    const TicketsUpcomingView(
                      text1: "Upcoming",
                      text2: "Previous",
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10), vertical: AppLayout.getHeight(15)),
                      margin: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(5)),
                      height: AppLayout.getHeight(400),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(1),
                      ),
                      child: Column(
                        children: const [
                          //TicketView(ticket: ticketList[0], color1: Colors.grey, color2: Colors.grey,)
                          TicketsBar(fCountry: 'New-York', from: 'NYC', tCountry: 'London', to: 'LDN',),
                          DividerWidget(color: Colors.black,),
                          //Gap(AppLayout.getHeight(15)),
                          Tickets2Bar(date: "1 May", dpTime: "08:00 AM", number: 23),
                           DividerWidget(color: Colors.black,),
                          //Gap(AppLayout.getHeight(15)),
                          Tickets3Bar(first: "Flutter Dash", number: "3478238471893", second: "Passanger", third: "Passport"),
                           DividerWidget(color: Colors.black,),
                            //Gap(AppLayout.getHeight(15)),
                            Tickets3Bar(first: "2849738091291834", number: "BFG79843", second: "Number of E-ticket", third: "Booking code"),
                             DividerWidget(color: Colors.black,),
                              //Gap(AppLayout.getHeight(15)),
                              Tickets3Bar(first: "VISA", number: "\$475.7", second: "Payment method", third: "Price")

                        ],
                      ),
                    ),
                    TicketView(ticket: ticketList[0], color1: const Color(0xFF526799), color2: Styles.orangeColor,)
                  ],
                ),
              )
            ],
          ),
         
        ],
      ),
    );
  }
}
 // Column(
      //   children: [
      //     Row(
      //       children: [
      //         Text("")
      //       ],
      //     )
      //   ],
      // )
 // Positioned(
      //   child: Container(
      //     //height: AppLayout.getHeight(14),
      //     //padding: EdgeInsets.all(AppLayout.getHeight(10)),
      //     decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         border: Border.all(width: 3, color: Colors.black)),
      //         // child: Container(
      //         //   height: AppLayout.getHeight(10),
      //         //   decoration: BoxDecoration(
      //         //     shape: BoxShape.circle,
      //         //     color: Colors.black
      //         //   ),
      //         // ),
      //   ),
      // )