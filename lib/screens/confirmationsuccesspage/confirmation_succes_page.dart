// ignore_for_file: prefer_const_constructors
import 'package:e_jkmm/appColors/app_colors.dart';
import 'package:e_jkmm/mybottombar/my_bottom_bar.dart';
import 'package:e_jkmm/routes/routes.dart';
import 'package:e_jkmm/svgimages/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: use_key_in_widget_constructors
class ConfirmationSuccessPage extends StatelessWidget {
  AppBar buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.black12,
      centerTitle: true,
      title: Text(
        "Success",
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
          },
          icon: SvgPicture.asset(
            SvgImages.close,
            width: 30,
            color: AppColors.baseBlackColor,
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                         // ignore: avoid_unnecessary_containers
                         Container(
                           padding: EdgeInsets.only(bottom: 15.0),
                              child: Align(
                              
                                alignment: Alignment.centerRight,
                                child: CircleAvatar(
                                  backgroundColor:
                                      AppColors.baseLightGreenColor,
                                  child: Icon(
                                    Icons.check,
                                    color: AppColors.baseWhiteColor,
                                  ),
                                ),
                              ),
                            ),
                        Text(
                          "Congratulations",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: AppColors.baseBlackColor,
                          ),
                        ),
                        Text(
                          "Your order is accepted",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: AppColors.baseBlackColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Your items are on the way",
                          style: TextStyle(
                            color: AppColors.baseGrey40Color,
                          ),
                        ),
                        Text(
                          "and should arrive shortly",
                          style: TextStyle(
                            color: AppColors.baseGrey40Color,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),

           Container(
            margin: EdgeInsets.all(10.0),
            child: MaterialButton(
              onPressed: () {PageRouting.goToNextPage(
                   context: context,
                   navigateTo: MyBottomBar()
                   );
              },
              color: AppColors.baseGrey10Color,
              elevation: 0,
              child: Center(
                child: Text(
                 "Back to Home",
                  style: TextStyle(color: AppColors.baseDarkPinkColor, fontSize: 18,/*fontWeight: FontWeight.bold*/),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
