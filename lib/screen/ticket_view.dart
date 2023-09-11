import 'package:bus_booking_tickets/style/app_layout.dart';
import 'package:bus_booking_tickets/style/app_style.dart';
import 'package:bus_booking_tickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin:  EdgeInsets.all(AppLayout.getHeight(10)),
        child: Column(
          children: [
            //showing travelling cities card
            Container(
              decoration: BoxDecoration(
                color:Styles.primaryColor,
                borderRadius:
                BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21))
                )
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['short'], style: Styles.headLineStyleTwo.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                // print('The width is ${constraints.constrainWidth()}');
                                return SizedBox(
                                  height: AppLayout.getHeight(24.0),
                                  child: Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate((constraints.constrainWidth()/6).floor(), (index) => const SizedBox(
                                      width: 3.0,height: 1.0, child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),),
                                    )),
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(FontAwesomeIcons.bus, color: Colors.white,),)),
                        ],
                      )),
                      ThickContainer(),
                      const Spacer(),
                      Text(ticket['to']['short'], style: Styles.headLineStyleTwo.copyWith(color: Colors.white),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100.0, child: Text(ticket['from']['name'], style: Styles.headLineStyleFour.copyWith(color: Colors.white),),
                      ),
                      Text('8H 30M', style: Styles.headLineStyleFour.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 100.0, child: Text(ticket['to']['name'], textAlign: TextAlign.end, style: Styles.headLineStyleFour.copyWith(color: Colors.white),),
                      )
                    ],
                  )
                ],
              ),
            ),
            //showing card ticket with primary card
            Container(
              color: Styles.primaryCardColor,
              child:  Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                    height: 20.0,
                   child: DecoratedBox(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(10.0),
                             bottomLeft: Radius.circular(10.0)
                         )
                       )),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                              width: 5.0, height: 1.0,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),
                              ),
                            )),
                          );
                        },
                    ),
                  )),
                  const SizedBox(
                    width: 10.0,
                    height: 20.0,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0)
                            )
                        )),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Styles.primaryCardColor,
                  borderRadius: const
                  BorderRadius.only(
                      bottomLeft: Radius.circular(21.0),
                      bottomRight: Radius.circular(21.0)
                  )
              ),
              padding: const EdgeInsets.only(left: 16.0, top: 10.0, right: 16.0, bottom: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price', style: Styles.headLineStyleThree.copyWith(color: Colors.white),),
                          const Gap(5.0),
                          Text(ticket['price'].toString(), style: Styles.headLineStyleThree.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'], style: Styles.headLineStyleThree.copyWith(color: Colors.white),),
                          const Gap(5.0),
                          Text(ticket['time'], style: Styles.headLineStyleThree.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Bus Type', style: Styles.headLineStyleThree.copyWith(color: Colors.white),),
                          const Gap(5.0),
                          Text(ticket['bus_type'], style: Styles.headLineStyleThree.copyWith(color: Colors.white),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
