import 'package:e_jkmm/appColors/app_colors.dart';
import 'package:flutter/material.dart';

class ShowAllWidget extends StatelessWidget {
  final String leftText;
  // ignore: prefer_const_constructors_in_immutables
  ShowAllWidget({Key? key, required this.leftText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 17,
              color: AppColors.baseBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          // ignore: prefer_const_constructors
          Text(
            "Show All",
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 17,
              color: AppColors.baseDarkPinkColor,
            ),
          )
        ],
      ),
    );
  }
}
