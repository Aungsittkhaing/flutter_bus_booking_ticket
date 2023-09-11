import 'package:bus_booking_tickets/screen/famous_places_page.dart';
import 'package:bus_booking_tickets/screen/ticket_view.dart';
import 'package:bus_booking_tickets/style/app_places_list.dart';
import 'package:bus_booking_tickets/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Gap(40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning', style: Styles.headLineStyleThree,),
                        const Gap(5.0),
                        Text('Bus Tickets', style: Styles.headLineStyleOne,)
                      ],
                    ),
                   const FlutterLogo(size: 50.0,)
                  ],
                ),
                const Gap(15.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                  child: Row(
                    children: [
                      const Icon(FontAwesomeIcons.searchengin, color: Colors.grey),
                      Text('Search', style: Styles.headLineStyleFour,)
                    ],
                  ),
                ),
                const Gap(40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular Routes', style: Styles.headLineStyleTwo,),
                    InkWell(
                      onTap: (){

                      },
                        child: Text(
                          'View all',
                          style: Styles.textStyle.copyWith(
                              color: Styles.primaryColor),
                        )
                    ),
                  ],
                )
              ],
            ),
          ),
          const Gap(10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
            ),
          ),
          const Gap(30.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Famous Places', style: Styles.headLineStyleTwo,),
                InkWell(
                    onTap: (){

                    },
                    child: Text(
                      'View all',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor),
                    )
                ),
              ],
            ),
          ),
          const Gap(20.0),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: placeLists.map((singlePlace) => FamousPlacePage(place: singlePlace)).toList()
            ),
          )
        ],
      ),
    );
  }
}