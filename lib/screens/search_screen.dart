import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayOut.getWidth(20),
            vertical: AppLayOut.getHeight(20)),
        children: [
          Gap(AppLayOut.getHeight(40)),
          Text(
            "What are you\nyou looking for ?",
            style:
                Styles.headLineStyle.copyWith(fontSize: AppLayOut.getWidth(35)),
          ),
          Gap(AppLayOut.getHeight(20)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(3.5),
              child: Row(
                children: [
                  /*Airline tickets*/
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayOut.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayOut.getHeight(50)),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("AirLine tickets")),
                  ),
                  /*Hotels*/
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayOut.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayOut.getHeight(50)),
                      ),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text("Hotels")),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayOut.getHeight(50),
                ),
                color: const Color(0xFFF4F6FD),
              ),
            ),
          ),
          Gap(AppLayOut.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayOut.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayOut.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayOut.getWidth(18),
                horizontal: AppLayOut.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayOut.getWidth(10)),
              color: Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayOut.getHeight(40)),
          AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
        ],
      ),
    );
  }
}
