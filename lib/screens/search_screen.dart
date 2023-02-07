import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_demo/utils/app_layout.dart';
import 'package:ticket_booking_demo/utils/styles.dart';
import 'package:ticket_booking_demo/widgets/icon_text_widget.dart';
import 'package:ticket_booking_demo/widgets/text_upcoming.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
              "What are\nyou looking for?",
              style: Styles.headlineStyle5.copyWith(color: Colors.black.withOpacity(1)),
            ),
            Gap(AppLayout.getHeight(15)),
            Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                     //padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12)),
                height: AppLayout.getHeight(50),
                width: size.width *0.44,
                decoration: BoxDecoration(
                        color: Colors.white.withOpacity(1),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(10)), bottomLeft: Radius.circular(AppLayout.getHeight(10)))
                      ),
                      child: Center(child: Text("Airline tickets", style: Styles.headlineStyle4.copyWith(color: Colors.black54))),
              ),
              Container(
                 //padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12)),
                height: AppLayout.getHeight(50),
                width: size.width *0.44,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                        //color: Colors.white.withOpacity(1),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(AppLayout.getHeight(10)), bottomRight: Radius.circular(AppLayout.getHeight(10)))
                      ),
                      child: Center(child: Text("Hotels", style: Styles.headlineStyle4.copyWith(color: Colors.black54))),
              ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(AppLayout.getHeight(15)),
            const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
            Gap(AppLayout.getHeight(15)),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[800],
                  
                ),
                onPressed: (){}, child:  Padding(
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(14)),
                  child: Text("Find Tickets", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                ),),
            ),
            Gap(AppLayout.getHeight(25)),
             const UpcomingFlights(bText: 'Upcoming Flights', sText: 'View all',),
             Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17), vertical: AppLayout.getHeight(15)),
                  width: size.width *0.42,
                  height: AppLayout.getHeight(350),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15))
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(180),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                          image: const DecorationImage(image: AssetImage("assets/airplane-g9f25c8a2b_1920.jpg"), fit: BoxFit.cover)
                        ),
                      ),
                      Gap(AppLayout.getHeight(10)),
                      Text("20% discount on business class tickets from Airline On International", style: Styles.textStyle)
                    ],
                  ),
                ),
                Gap(AppLayout.getWidth(20)),
                Column(
                  children: [
                    Container(
                      width: size.width * 0.4,
                      height: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                        color: Colors.cyan
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Container(
                       width: size.width * 0.4,
                      height: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                        color: Colors.orange
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text("Take love", style: Styles.headlineStyle2.copyWith(color: Colors.white),),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
             )
              ],
            )
          ),
        ],
      ),
    );
  }
}
