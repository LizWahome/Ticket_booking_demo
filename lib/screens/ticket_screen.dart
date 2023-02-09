import 'package:barcode_widget/barcode_widget.dart';
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
import 'package:ticket_booking_demo/widgets/tickets4.dart';
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
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(10),
                          vertical: AppLayout.getHeight(15)),
                      margin: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(5)),
                      height: AppLayout.getHeight(550),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(1),
                      ),
                      child: Column(
                        children: [
                          //TicketView(ticket: ticketList[0], color1: Colors.grey, color2: Colors.grey,)
                          const TicketsBar(
                            fCountry: 'New-York',
                            from: 'NYC',
                            tCountry: 'London',
                            to: 'LDN',
                          ),
                          const DividerWidget(
                            color: Colors.black,
                          ),
                          //Gap(AppLayout.getHeight(15)),
                          const Tickets2Bar(
                              date: "1 May", dpTime: "08:00 AM", number: 23),
                          const DividerWidget(
                            color: Colors.black,
                          ),
                          //Gap(AppLayout.getHeight(15)),
                          const Tickets3Bar(
                              first: "Flutter Dash",
                              number: "3478238471893",
                              second: "Passanger",
                              third: "Passport"),
                          const DividerWidget(
                            color: Colors.black,
                          ),
                          //Gap(AppLayout.getHeight(15)),
                          const Tickets3Bar(
                              first: "2849738091291834",
                              number: "BFG79843",
                              second: "Number of E-ticket",
                              third: "Booking code"),
                          const DividerWidget(
                            color: Colors.black,
                          ),
                          Tickets4Bar(
                            number: "\$475.6",
                            second: "Payment method",
                            third: "Price",
                            image: Image.asset(
                              "assets/Visa_Inc._logo.svg (1).png",
                              width: 50,
                              height: 50,
                            ),
                            visatext: '***37426982',
                          ),
                          //Gap(AppLayout.getHeight(15)),
                          // const Tickets3Bar(
                          //     first: "VISA",
                          //     number: "\$475.7",
                          //     second: "Payment method",
                          //     third: "Price"),
                          Gap(AppLayout.getHeight(15)),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: BarcodeWidget(
                              data: "https://github.com/roy-276",
                              barcode: Barcode.code128(),
                              drawText: false,
                              height: 80,
                              color: Styles.textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(10)),
                      child: TicketView(
                        ticket: ticketList[0],
                        color1: const Color(0xFF526799),
                        color2: Styles.orangeColor,
                      ),
                    ),
                    
                  ],
                ),
              )
            ],
          ),
          Positioned(
            right: AppLayout.getHeight(15),
            top: AppLayout.getHeight(355),
            width: AppLayout.getWidth(20),
            height: AppLayout.getHeight(20),
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle,
              border: Border.all(width: AppLayout.getWidth(3), color: Colors.black)
              ),
              child: Container(
                margin: EdgeInsets.all(AppLayout.getHeight(3),),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black
                ),
              ),
            ),
          ),
          Positioned(
            left: AppLayout.getHeight(15),
            top: AppLayout.getHeight(355),
            width: AppLayout.getWidth(20),
            height: AppLayout.getHeight(20),
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle,
              border: Border.all(width: AppLayout.getWidth(3), color: Colors.black)
              ),
              child: Container(
                margin: EdgeInsets.all(AppLayout.getWidth(3),),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black
                ),
              ),
            ),
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