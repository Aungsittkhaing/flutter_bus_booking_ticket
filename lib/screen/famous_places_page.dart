import 'package:bus_booking_tickets/style/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../style/app_style.dart';
class FamousPlacePage extends StatelessWidget {
  final Map<String, dynamic> place;
  const FamousPlacePage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    // print('Place is ${place['location']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350.0,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 17.0),
      margin: const EdgeInsets.only(right: 17.0, top: 5.0),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20.0,
            spreadRadius: 5.0
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${place['image']}"
                )
              )
            ),
          ),
          const Gap(10.0),
          Text('${place['location']}', style: Styles.headLineStyleTwo.copyWith(color: Styles.greyKakiColor),),
          const Gap(10.0),
          Text('${place['destination']}', style: Styles.headLineStyleThree.copyWith(color: Styles.greyKakiColor),),
        ],
      ),
    );
  }
}
