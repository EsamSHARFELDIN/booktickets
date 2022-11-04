import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayOut.getWidth(12), horizontal: AppLayOut.getWidth(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayOut.getWidth(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            //Icons.flight_takeoff_rounded,
            color: const Color(0xFFBFC2DF),
          ),
          Gap(AppLayOut.getHeight(10)),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
