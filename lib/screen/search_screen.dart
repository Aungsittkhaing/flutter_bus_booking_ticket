import 'package:bus_booking_tickets/style/app_layout.dart';
import 'package:bus_booking_tickets/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\n you looking for?",
            style: Styles.headLineStyleOne.copyWith(fontSize: 40),
          )
        ],
      ),
    );
  }
}
