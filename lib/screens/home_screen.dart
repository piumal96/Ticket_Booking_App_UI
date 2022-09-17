import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooki/screens/ticket.dart';
import 'package:ticketbooki/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(

              children: [
                Gap(40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Good Morning",style: Styles.headLineStyle3,),
                       const Gap(5),
                       Text("Book Tickets",style: Styles.headLineStyle,),
                    ],
                  ),
                  Container(
                    height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/images/img_1.png"),
                          ))),
                ]),
                Gap(25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                      Text("Search",style: Styles.headLineStyle4,),

                    ],
                  ),
                ),
                Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flight",style: Styles.headLineStyle2,),
                    InkWell(
                        onTap: (){
                          print("You are tapped");
                        },
                        child: Text("View all",style:TextStyle(color: Colors.blue),)),
                  ],
                )
              ],
            ),
          ),
          Gap(15),
          TicketView(),
        ],
      ),
    );
  }
}
