import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_demo/utils/app_layout.dart';
import 'package:ticket_booking_demo/utils/styles.dart';
import 'package:ticket_booking_demo/widgets/image_widget.dart';
import 'package:ticket_booking_demo/widgets/profile_miles_widget.dart';
import 'package:ticket_booking_demo/widgets/text_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(21),
            vertical: AppLayout.getHeight(50)
            ),
        children: [
          Row(
            children: [
              const ImageWidget(),
              Gap(AppLayout.getWidth(15)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(),
                  Gap(AppLayout.getHeight(3)),
                  Text(
                    "New York",
                    style: Styles.headlineStyle3.copyWith(fontSize: 13),
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(5)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(25)),
                        color: const Color(0xFFFEF4F3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF526799)
                              // border:
                              //     Border.all(width: 3, color: Colors.black)
                              ),
                              
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white,size: 15,)
                        ),
                        Gap(AppLayout.getWidth(3)),
                        Text(
                          "Premium status",
                          style: Styles.textStyle.copyWith(color: const Color(0xFF526799), fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Divider(color: Colors.grey.shade300,),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(AppLayout.getHeight(25)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xFF526799)),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: AppLayout.getHeight(30),
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor,size: 27,),
                    ),
                      Gap(AppLayout.getHeight(10)),
                    Column(
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headlineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "You have 150 flights in a year",
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: -25,
                right: -25,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(20)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: 15, color: Colors.indigo.shade900),
                      color: Colors.transparent),
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Text("Accumulated miles", style: Styles.headlineStyle2,),
          Gap(AppLayout.getHeight(30)),
          Text("192802", style: Styles.headlineStyle5, textAlign: TextAlign.center,),
          Gap(AppLayout.getHeight(20)),
            Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Miles accrued", style: Styles.headlineStyle3,),
                  Text("23 May 2023", style: Styles.headlineStyle3,)
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              const MilesWidget(rFrom: 'Airline Co', miles: '48291',),
                Gap(AppLayout.getHeight(18)),
              const MilesWidget(miles: "27", rFrom: "Mc Donald's"),
                Gap(AppLayout.getHeight(18)),
              const MilesWidget(miles: "52341", rFrom: "Exuma")
            ],
          ),
            Gap(AppLayout.getHeight(50)),
            InkWell(
              onTap: (){},
              child: Text("How to get more miles", style: Styles.headlineStyle3.copyWith(color: Styles.primaryColor), textAlign: TextAlign.center,))
        ],
      ),
    );
  }
}
