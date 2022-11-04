import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Hotel price is ${hotel['price']}');
    final size = AppLayOut.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayOut.getHeight(350),
      margin: const EdgeInsets.only(right: 17, top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayOut.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayOut.getHeight(12)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}",
                ),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(10),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Text(
            "\$${hotel['price']} / night",
            style: Styles.headLineStyle.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
