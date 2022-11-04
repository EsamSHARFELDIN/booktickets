import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/logo.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: const [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(
                          0xFFBFC205,
                        ),
                      ),
                      const Gap(5),
                      Text(
                        "Search",
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print("You get tap !");
                      },
                      child: Text(
                        "View all",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(15),
          TicketView(),
        ],
      ),
    );
  }
}
